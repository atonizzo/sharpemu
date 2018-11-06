// Copyright (c) 2016-2018, atonizzo@hotmail.com
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

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

static int load_roms(void)
{
    FILE *fp_rom;
    // We need to load the internal ROM (internal to the sc61860) and
    //  the external one, which usually sits on an external ROM chip.
    fp_rom = fopen(pt.irom.file_name, "rb");
    if (fp_rom == NULL)
    {
        printf("Cannot open %s file.\r\n", pt.irom.file_name);
        return -1;
    }

    // Find the size of the file.
    fseek(fp_rom, 0L, SEEK_END);
    uint32_t file_size = ftell(fp_rom);
    rewind(fp_rom);
    uint16_t mem_address = pt.irom.base_address;

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

int setup_emulator(void)
{
    memset((void *)&cpu_state, '\0', sizeof(cpu_state));
    memset((void *)&cpu_state_past, '\0', sizeof(cpu_state));
    memset((void *)&disassembly_buffer, 0xff, sizeof(disassembly_buffer));
    memset((void *)&breakpoint_list, 0, sizeof(breakpoint_list));
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
    cpu_state.scratchpad.regs.i  = DEFAULT_I_VALUE;
    cpu_state.scratchpad.regs.j  = DEFAULT_J_VALUE;
    cpu_state.scratchpad.regs.a  = DEFAULT_A_VALUE;
    cpu_state.scratchpad.regs.b  = DEFAULT_B_VALUE;
    cpu_state.scratchpad.regs.xreg.x = DEFAULT_X_VALUE;
    cpu_state.scratchpad.regs.yreg.y = DEFAULT_Y_VALUE;
    cpu_state.scratchpad.regs.k  = DEFAULT_K_VALUE;
    cpu_state.scratchpad.regs.l  = DEFAULT_L_VALUE;
    cpu_state.scratchpad.regs.m  = DEFAULT_M_VALUE;
    cpu_state.scratchpad.regs.n  = DEFAULT_N_VALUE;
    cpu_state.r                  = DEFAULT_R_VALUE;
    cpu_state.p                  = DEFAULT_P_VALUE;
    cpu_state.q                  = DEFAULT_Q_VALUE;
    cpu_state.pc                 = DEFAULT_PC_VALUE;

    FILE *fp_events = fopen("events.dbg", "r");
    if (fp_events != NULL)
    {
        //
        char event_descriptor[128];
        char *rc;
        int done = 0;
        do
        {
            rc = fgets(event_descriptor, 127, fp_events);
            if (rc == 0)
                continue;
            switch (event_descriptor[0])
            {
            // P is a breakpoint that is triggered when the program counter
            //  reaches it.
            // 'P' is a breakpoint that remains in place when it it hit.
            // 'p' is a temporary breakpoint, that expires (i.e. it is removed)
            // the first time that it is hit.
            case 'P':
            case 'p':
                if (event_descriptor[1] != ':')
                {
                    done = 1;
                    break;
                }
                if ((event_descriptor[2] == '0') &&
                                              (event_descriptor[3] == 'x'))
                {
                    uint16_t address =
                          (uint16_t)strtol(&event_descriptor[2], NULL, 0);
                    if (address >= 0x10000)
                        break;
                    if (event_descriptor[0] == 'i')
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
                if (event_descriptor[1] != ':')
                {
                    done = 1;
                    break;
                }
                if ((event_descriptor[2] == '0') &&
                                              (event_descriptor[3] == 'x'))
                {
                    uint8_t instruction =
                          (uint8_t)strtol(&event_descriptor[2], NULL, 0);
                    if (event_descriptor[0] == 'i')
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
                if (event_descriptor[1] != ':')
                {
                    done = 1;
                    break;
                }
                char *next_ptr;

                uint32_t address =
                          (uint32_t)strtol(&event_descriptor[2], &next_ptr, 0);
                if (next_ptr[0] != ':')
                {
                    done = 1;
                    break;
                }
                uint32_t value = (uint32_t)strtol(&next_ptr[1], NULL, 0);
                cpu_state.scratchpad.raw.mem[address] = value;
                break;
            default:
                break;
            }
        }
        while ((rc != NULL) && (done == 0));
        fclose(fp_events);
    }

    gettimeofday(&timeval_start, NULL);
    write_mem(0xF8BA, 0xFF);
    write_mem(0xC6E9, 0xFF);
    return 0;
}

static void check_timers(void)
{
    struct timeval timeval_now;
    gettimeofday(&timeval_now, NULL);
    long elapsed_usec = (timeval_now.tv_sec - timeval_start.tv_sec) * 1000000 +
                                    timeval_now.tv_usec - timeval_start.tv_usec;
    cpu_state.test.ct1 = (elapsed_usec >= 512000);
    cpu_state.test.ct2 = (elapsed_usec >= 2000);
}

void emulate_instruction(void)
{
    check_timers();
    if ((cpu_state.portc & PORTC_BITS_HLT) != 0)
    {
        // We are not going to execute instructions if the CPU is stopped, we
        //  will only make sure that the 512ms timer has not elapsed.
        if (cpu_state.test.ct1 == 0)
            return;

        fprintf(fp_memaccess, "S: %04x CPU is woken up\r\n", cpu_state.pc);
        cpu_state.scratchpad.raw.mem[PORTC_OFFSET] &= ~PORTC_BITS_HLT;
        cpu_state.portc = cpu_state.scratchpad.raw.mem[PORTC_OFFSET];
    }

    int i = 0;
    uint8_t instruction = read_mem(cpu_state.pc);

    // Disassemble the current line, so we can store it in the
    //  'instruction.txt' file.
    char this_line[1024];
    if ((diag_level & DIAG_LEVEL_DISASSEMBLE_LINE) != 0)
        sc61860_disassembler(cpu_state.pc, instruction, this_line);

    while (sc61860_instr[i].attributes != 0)
    {
        if ((instruction & sc61860_instr[i].mask) ==
                                           sc61860_instr[i].mask_value)
        {
            sc61860_instr[i].simulate();
            break;
        }
        i++;
    }
    if ((diag_level & DIAG_LEVEL_DISASSEMBLE_LINE_REGS) != 0)
    {
        if (sc61860_instr[i].attributes == 0)
            sim_not_implemented();
        while (strlen(this_line) < 80)
            strcat(this_line, " ");

        // Now add te content of the registers, so they reflect the values they
        //  obtain after the instruction is executed.
        sprintf(this_line + strlen(this_line),
         "I=$%02X J=$%02X A=$%02X B=$%02X X=$%04X "
         "Y=$%04X K=$%02X L=$%02X DP=$%04X "
         "p=$%02X q=$%02X "
         "C=%d Z=%d, PORTA=$%02X, PORTB=$%02X, PORTC=$%02X",
            cpu_state.scratchpad.regs.i,
            cpu_state.scratchpad.regs.j,
            cpu_state.scratchpad.regs.a,
            cpu_state.scratchpad.regs.b,
            cpu_state.scratchpad.regs.xreg.x,
            cpu_state.scratchpad.regs.yreg.y,
            cpu_state.scratchpad.regs.k,
            cpu_state.scratchpad.regs.l,
            cpu_state.dp,
            cpu_state.p,
            cpu_state.q,
            cpu_state.flags.carry,
            cpu_state.flags.zero,
            cpu_state.porta,
            cpu_state.portb,
            cpu_state.portc);
    }
    if ((diag_level & DIAG_LEVEL_DISASSEMBLE_LINE) != 0)
        fprintf(fp_instr, "%s\r\n", this_line);
}
