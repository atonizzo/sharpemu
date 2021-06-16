// Copyright (c) 2016-2021, atonizzo@gmail.com
// All rights reserved.
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
// 02110-1301, USA.

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/time.h>
#include <gtk/gtk.h>
#include <sc61860_emu.h>

uint8_t memory_image[65536];
int personality;
struct timeval timeval_start;
FILE *fp_memaccess;
FILE *fp_instr;
uint32_t diag_level;
char user_file_name[128];
long single_step_break;
long emulated_instructions;
long save_start, save_end;
struct __cpu_state cpu_state;
struct __cpu_state cpu_state_past;

double ms_time_diff(struct timeval x)
{
    struct timeval timeval_now;
    gettimeofday(&timeval_now, NULL);
    double x_us = (double)x.tv_sec * 1000000 + (double)x.tv_usec;
    double y_us = (double)timeval_now.tv_sec * 1000000 +
                                    (double)timeval_now.tv_usec;
    return ((double)y_us - (double)x_us) / 1000;
}

static int load_roms(void)
{
    // We need to load the internal ROM (internal to the sc61860) and
    //  the external one, which usually sits on an external ROM chip.
    FILE *fp_rom = fopen(pt.irom.file_name, "rb");
    if (fp_rom == NULL)
    {
        printf("Cannot open %s file.\r\n", pt.irom.file_name);
        return -1;
    }

    // Find the size of the file.
    fseek(fp_rom, 0L, SEEK_END);
    uint32_t file_size = ftell(fp_rom);
    rewind(fp_rom);
    uint32_t mem_address = pt.irom.base_address;

    do
    {
        memory_image[mem_address] = fgetc(fp_rom);
        mem_address += 1;
    }
    while (mem_address < pt.irom.base_address + file_size);
    fclose(fp_rom);

    // This is the external ROM, containing the BASIC interpreter.
    fp_rom = fopen(pt.erom.file_name, "rb");
    if (fp_rom == NULL)
    {
        printf("Cannot open %s file.\r\n", pt.erom.file_name);
        return -1;
    }

    // Find the size of the file.
    fseek(fp_rom, 0L, SEEK_END);
    file_size = ftell(fp_rom);
    rewind(fp_rom);
    mem_address = pt.erom.base_address;

    do
    {
        memory_image[mem_address] = fgetc(fp_rom);
        mem_address += 1;
    }
    while (mem_address < pt.erom.base_address + file_size);
    fclose(fp_rom);
    return 0;
}

int read_debug_events(void)
{
    memset((void *)&breakpoint_list, 0, sizeof(breakpoint_list));
    FILE *fp_events = fopen("events.dbg", "r");
    if (fp_events != NULL)
    {
        char event_descriptor[128];
        char *rc;
        int done = 0;
        do
        {
            rc = fgets(event_descriptor, 127, fp_events);
            if (rc == 0)
                continue;
            int k = 0;
            while (event_descriptor[k] == ' ')
                k++;
            switch (event_descriptor[k])
            {
            case '#':
                // A comment.
                break;
            // P is a breakpoint that is triggered when the program counter
            //  reaches it.
            // 'P' is a breakpoint that remains in place when it it hit.
            // 'p' is a temporary breakpoint, that expires (i.e. it is removed)
            // the first time that it is hit.
            case 'P':
            case 'p':
                if (event_descriptor[k + 1] != ':')
                {
                    done = 1;
                    break;
                }
                if ((event_descriptor[k + 2] == '0') &&
                                              (event_descriptor[k + 3] == 'x'))
                {
                    uint16_t address =
                          (uint16_t)strtol(&event_descriptor[k + 2], NULL, 0);
                    if (address >= 0x10000)
                        break;
                    if (event_descriptor[k] == 'i')
                        set_breakpoint(address,
                                       BREAKPOINT_ATTRIB_PC |
                                       BREAKPOINT_ATTRIB_TEMPORARY);
                    else
                        set_breakpoint(address, BREAKPOINT_ATTRIB_PC);
                }
                break;
            // I is a breakpoint that is triggered when an instruction with
            //  a given opcode is about to be executed.
            // 'I' is a breakpoint that remains in place when it it hit.
            // 'i' is a temporary breakpoint, that expires (i.e. it is removed)
            // the first time that it is hit.
            case 'I':
            case 'i':
                if (event_descriptor[k + 1] != ':')
                {
                    done = 1;
                    break;
                }
                if ((event_descriptor[k + 2] == '0') &&
                                              (event_descriptor[k + 3] == 'x'))
                {
                    uint8_t instruction =
                          (uint8_t)strtol(&event_descriptor[k + 2], NULL, 0);
                    if (event_descriptor[k + 0] == 'i')
                        set_breakpoint(instruction,
                                       BREAKPOINT_ATTRIB_INSTRUCTION |
                                       BREAKPOINT_ATTRIB_TEMPORARY);
                    else
                        set_breakpoint(instruction,
                                       BREAKPOINT_ATTRIB_INSTRUCTION);
                }
                break;
            // S is a a value for one of the scratchpad memory locations.
            // The format is S:AA:BB where AA is the register number (<96)
            //  and BB is the new content.
            case 'S':
            case 's':
                if (event_descriptor[k + 1] != ':')
                {
                    done = 1;
                    break;
                }
                char *next_ptr;

                uint32_t address =
                      (uint32_t)strtol(&event_descriptor[k + 2], &next_ptr, 0);
                if (next_ptr[0] != ':')
                {
                    done = 1;
                    break;
                }
                uint32_t value = (uint32_t)strtol(&next_ptr[1], NULL, 0);
                cpu_state.imem[address] = value;
                break;
            default:
                break;
            }
        }
        while ((rc != NULL) && (done == 0));
        fclose(fp_events);
    }
    return 0;
}

int setup_emulator(void)
{
    memset((void *)&cpu_state, '\0', sizeof(cpu_state));
//    memset((void *)&disassembly_buffer, 0xff, sizeof(disassembly_buffer));
    memset((void *)&mem_view_past, 0, sizeof(mem_view_past));

    int personality = load_roms();
    if (personality < 0)
    {
        printf("Cannot load ROMS.\r\n");
        return -1;
    }

    char *fname_access = "./memaccess.txt";
    fp_memaccess = fopen(fname_access, "w");
    if (fp_memaccess == NULL)
    {
        printf("Cannot open %s file.\r\n", fname_access);
        return -1;
    }

    if ((diag_level & (DIAG_LEVEL_DISASSEMBLE_LINE |
                       DIAG_LEVEL_DISASSEMBLE_LINE_REGS)) != 0)
    {
        char *fname_instr = "./instructions.txt";
        fp_instr = fopen(fname_instr, "w");
        if (fp_instr == NULL)
        {
            printf("Cannot open %s file.\r\n", fname_instr);
            return -1;
        }
    }

    if (user_file_name[0] != '\0')
    {
        FILE *fp_user_file = fopen(user_file_name, "r");
        if (fp_user_file == NULL)
        {
            printf("Cannot open %s file.\r\n", user_file_name);
            return -1;
        }

        parse_hex(fp_user_file);
        fclose(fp_user_file);
    }

    // Provide a default value to the CPU registers before reading the
    //  events file, so that these values can be redefined by the user.
    cpu_state.imem[IRAM_REG_I] = DEFAULT_I_VALUE;
    cpu_state.imem[IRAM_REG_J] = DEFAULT_J_VALUE;
    cpu_state.imem[IRAM_REG_A] = DEFAULT_A_VALUE;
    cpu_state.imem[IRAM_REG_B] = DEFAULT_B_VALUE;
    cpu_state.imem[IRAM_REG_XL] = DEFAULT_X_VALUE;
    cpu_state.imem[IRAM_REG_XH] = DEFAULT_X_VALUE >> 8;
    cpu_state.imem[IRAM_REG_YL] = DEFAULT_Y_VALUE;
    cpu_state.imem[IRAM_REG_YH] = DEFAULT_Y_VALUE >> 8;
    cpu_state.imem[IRAM_REG_K] = DEFAULT_K_VALUE;
    cpu_state.imem[IRAM_REG_L] = DEFAULT_L_VALUE;
    cpu_state.imem[IRAM_REG_M] = DEFAULT_M_VALUE;
    cpu_state.imem[IRAM_REG_N] = DEFAULT_N_VALUE;
    cpu_state.dp = DEFAULT_DP_VALUE;
    cpu_state.cdp = pt.read_memory(cpu_state.dp);
    cpu_state.r = DEFAULT_R_VALUE;
    cpu_state.p = DEFAULT_P_VALUE;
    cpu_state.q = DEFAULT_Q_VALUE;
    cpu_state.pc = DEFAULT_PC_VALUE;
    cpu_state.mode = CALC_MODE_OFF;
    cpu_state.cycles = 0;
    cpu_state.table_items = -1;
    cpu_state.current_item = -1;

    memcpy(&cpu_state_past, &cpu_state, sizeof(cpu_state));

    read_debug_events();

    gettimeofday(&timeval_start, NULL);
    write_mem(0xF8BA, 0xFF);
    write_mem(0xC6E9, 0xFF);
    emulated_instructions = 0;

    // Debug.
    single_step_break = 0;
    return 0;
}

void emulate_instruction(void)
{
    // Check if either the 512ms or the 2s counters expired.
    double ms_diff = ms_time_diff(timeval_start);
    cpu_state.test.ct1 = (ms_diff >= 512) ? 1 : 0;
    cpu_state.test.ct2 = (ms_diff >= 2000) ? 1 : 0;

//    if (cpu_state.test.kon != 0)
//        printf("cpu_state.test.kon = 1\r\n");
    if ((cpu_state.portc & PORTC_CPU_HLT) != 0)
    {
        // We are not going to execute instructions as long as the CPU is
        //  halted. When the 512ms timer elapses the CPU wakes up.
        if (cpu_state.test.ct1 == 0)
            return;

        fprintf(fp_memaccess, "S: %04x CPU is woken up\r\n", cpu_state.pc);
        cpu_state.imem[IRAM_PORTC] &= ~PORTC_CPU_HLT;
        cpu_state.portc = cpu_state.imem[IRAM_PORTC];
    }

    uint8_t instruction = read_mem(cpu_state.pc);

    // Disassemble the current line, so we can store it in the
    //  'instruction.txt' file.
    GString *p = g_string_new(NULL);
    if ((diag_level & DIAG_LEVEL_DISASSEMBLE_LINE) != 0)
        sc61860_disassembler(cpu_state.pc, instruction, p);

    int i = 0;
    while (sc61860_instr[i].attributes != 0)
    {
        if ((instruction & sc61860_instr[i].mask) ==
                                                 sc61860_instr[i].mask_value)
        {
            sc61860_instr[i].emulate();
            emulated_instructions += 1;
            break;
        }
        i++;
    }

    if (save_start >= save_end)
        return;

    if ((emulated_instructions >= save_start) &&
                                           (emulated_instructions < save_end))

    {
        if ((diag_level & DIAG_LEVEL_DISASSEMBLE_LINE_REGS) != 0)
        {
            if (sc61860_instr[i].attributes == 0)
                sim_not_implemented();
            while (p->len < 65)
                g_string_append_c(p, ' ');

            // Now add te content of the registers, so they reflect the values
            //  they obtain after the instruction is executed.
            g_string_append_printf(p,
                    "I=%02X J=%02X A=%02X B=%02X X=%04X "
                    "Y=%04X K=%02X L=%02X DP=%04X "
                    "p=%02X q=%02X "
                    "C=%d Z=%d, PORTA=%02X, PORTB=%02X, PORTC=%02X",
                    cpu_state.imem[IRAM_REG_I],
                    cpu_state.imem[IRAM_REG_J],
                    cpu_state.imem[IRAM_REG_A],
                    cpu_state.imem[IRAM_REG_B],
               (cpu_state.imem[IRAM_REG_XH] << 8) + cpu_state.imem[IRAM_REG_XL],
               (cpu_state.imem[IRAM_REG_YH] << 8) + cpu_state.imem[IRAM_REG_YL],
                    cpu_state.imem[IRAM_REG_K],
                    cpu_state.imem[IRAM_REG_L],
                    cpu_state.dp,
                    cpu_state.p,
                    cpu_state.q,
                    cpu_state.flags.carry,
                    cpu_state.flags.zero,
                    cpu_state.porta,
                    cpu_state.portb,
                    cpu_state.portc);
        }
        if (((diag_level & DIAG_LEVEL_DISASSEMBLE_LINE) != 0) ||
                        ((diag_level & DIAG_LEVEL_DISASSEMBLE_LINE_REGS) != 0))
            fprintf(fp_instr, "%s\r\n", p->str);
    }
    g_string_free(p, TRUE);
}
