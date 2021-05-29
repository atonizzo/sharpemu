// Copyright (c) 2016-2021, atonizzo@gmail.com
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
#include <termios.h>
#include <gtk/gtk.h>
#include <sc61860_emu.h>

//http://blog.borovsak.si/

int break_here(int a)
{
    return 3;
}

char *reg_to_str[] =
{
    "I", "J", "A", "B", "Xl", "Xh", "Yl", "Yh", "K", "L", "M", "N",
    "A", "B", "F", "C"
};

char *port_to_str[] =
{
    "A", "B", "F", "C"
};

uint8_t mem_view_past[MEM_VIEW_ROWS * 16];

struct __disassembly_buffer disassembly_buffer;

// This is the index of the item inside disassembly_buffer that holds the line
//  where the program counter currently resides.
uint32_t pc_line = 0;

//int16_t case_number = -1, case_number_tmp;
//int16_t case_number_dis = -1, case_number_dis_tmp = -1;
static uint8_t find_instruction_length(uint16_t pc, int8_t instruction)
{
    uint32_t i = 0;
    while (sc61860_instr[i].attributes != 0)
    {
        if ((instruction & sc61860_instr[i].mask) ==
                                           sc61860_instr[i].mask_value)
            return sc61860_instr[i].attributes & 0xFF;
        i++;
    }

    // This is an unrecognized opcode that will be printed as "???". We
    //  increment the PC by 1 in this case.
    return 1;
}

static void print_scratchpad_reg(uint16_t reg)
{
    char *format;
    char label_name[32];
    if (cpu_state.imem[reg] != cpu_state_past.imem[reg])
        format = "<span foreground=\"red\">\%02X</span>";
    else
        format = "<span foreground=\"black\">\%02X</span>";
    char *markup = g_markup_printf_escaped(format,
                                           cpu_state.imem[reg]);
    sprintf(label_name, "label_reg_%s", reg_to_str[reg]);
    GObject *this_label = gtk_builder_get_object(builder, label_name);
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);
}

static void print_bcd_reg(uint16_t reg, char *s)
{
    // XReg
    int i;
    int k = 0x10 + reg * 8;
    char label_text[128];
    char *markup;
    for (i = k; i < k + 8; i++)
        if (((cpu_state.imem[i] & 0xF0) > 0x90) ||
            ((cpu_state.imem[i] & 0x0F) > 0x09))
        {
            markup = g_markup_printf_escaped("NaN");
            GObject *this_label = gtk_builder_get_object(builder, s);
            gtk_label_set_markup(GTK_LABEL(this_label), markup);
            g_free(markup);
            return;
        }

    for (i = k; i < k + 8; i++)
        if (cpu_state.imem[i] != cpu_state_past.imem[i])
            break;
    if (i < 8)
    {
        strcpy(label_text, "<span foreground=\"red\">");
        for (i = k; i < k + 8; i++)
            cpu_state_past.imem[i] = cpu_state.imem[i];
    }
    else
        strcpy(label_text, "<span foreground=\"black\">");

    if ((cpu_state_past.imem[k + 1] & 0x0F) != 0)
        strcat(label_text, "-");

    int16_t exp = ((cpu_state.imem[k] & 0xF0) >> 4) * 100 +
                   (cpu_state.imem[k] & 0x0F) * 10 +
                   ((cpu_state.imem[k+1] & 0xF0) >> 4);
    if (exp > 500)
        exp = -(1000 - exp);

    strcat(label_text, "%c.%c%c%c%c%c%c%c%c%cE%d</span>");
    markup = g_markup_printf_escaped(label_text,
                    ((cpu_state.imem[k + 2] & 0xF0) >> 4) + '0',
                    (cpu_state.imem[k + 2] & 0x0F) + '0',
                    ((cpu_state.imem[k + 3] & 0xF0) >> 4) + '0',
                    (cpu_state.imem[k + 3] & 0x0F) + '0',
                    ((cpu_state.imem[k + 4] & 0xF0) >> 4) + '0',
                    (cpu_state.imem[k + 4] & 0x0F) + '0',
                    ((cpu_state.imem[k + 5] & 0xF0) >> 4) + '0',
                    (cpu_state.imem[k + 5] & 0x0F) + '0',
                    ((cpu_state.imem[k + 6] & 0xF0) >> 4) + '0',
                    (cpu_state.imem[k + 6] & 0x0F) + '0',
                    exp);
    GObject *this_label = gtk_builder_get_object(builder, s);
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);
}

void display_core_info(void)
{
    int i;
    uint16_t this_pc;
    char label_text[128];
    char *format;
    char *markup;
    GObject *this_label;
    int table_items, this_item;

    // Here we aim to build a table of the loines to disassemble. For each we
    //  determine the program counter and the instuction opcode.
    if (disassembly_buffer.line[pc_line + 1].pc == cpu_state.pc)
    {
        // We have good data in the buffer. We move everything up by one
        //  and insert a new line.
        if (pc_line < DISASSEMBLY_CURSOR_MAX)
            pc_line++;
        else
        {
            for (i = 1; i < DISASSEMBLY_LENGTH; i++)
            {
                disassembly_buffer.line[i - 1].pc =
                                             disassembly_buffer.line[i].pc;
                disassembly_buffer.line[i - 1].opcode =
                                             disassembly_buffer.line[i].opcode;
            }

//            uint8_t previous_instruction = pt.read_memory(
//                           disassembly_buffer.line[DISASSEMBLY_LENGTH - 2].pc);
            disassembly_buffer.line[DISASSEMBLY_LENGTH - 1].pc =
                disassembly_buffer.line[DISASSEMBLY_LENGTH - 2].pc +
            find_instruction_length(
                        disassembly_buffer.line[DISASSEMBLY_LENGTH - 2].pc,
                        disassembly_buffer.line[DISASSEMBLY_LENGTH - 2].opcode);
/*            if (case_number_dis == -1)
            {
                if (previous_instruction == 0x7A)
                {
                    case_number_dis_tmp = pt.read_memory(
                        disassembly_buffer.line[DISASSEMBLY_LENGTH - 2].pc + 1);
                    disassembly_buffer.line[DISASSEMBLY_LENGTH - 1].opcode =
                                pt.read_memory(
                            disassembly_buffer.line[DISASSEMBLY_LENGTH - 1].pc);
                }
                if (previous_instruction == 0x69)
                {
                    case_number_dis = case_number_dis_tmp - 1;
                    disassembly_buffer.line[DISASSEMBLY_LENGTH - 1].opcode =
                                                                           0x16;
                }
                else
                    disassembly_buffer.line[DISASSEMBLY_LENGTH - 1].opcode =
                                pt.read_memory(
                        disassembly_buffer.line[DISASSEMBLY_LENGTH - 1].pc);
            }
            else
            {
                if (case_number_dis > 0)
                    // $17 is an unused opcode for the sc61860. We'll use it to
                    //  emulate the .CASE instruction.
                    disassembly_buffer.line[DISASSEMBLY_LENGTH - 1].opcode =
                                                                           0x16;
                else
                    disassembly_buffer.line[DISASSEMBLY_LENGTH - 1].opcode =
                                                                           0x17;

                case_number_dis -= 1;
            }*/
        }
    }
    else
    {
        // We have gone through a jump of some sort, so the next instruction is
        //  not the one in the list. Check if the target line is already
        //  anywhere in the buffer.
        for (i = 0; i < DISASSEMBLY_CURSOR_MAX; i++)
            if (disassembly_buffer.line[i].pc == cpu_state.pc)
                break;

        if (i == DISASSEMBLY_CURSOR_MAX)
        {
            table_items = -1;
            this_item = -1;

            // In this case the targer instruction is not already in the
            //  disassembly buffer. We will then fill the buffer with fresh
            //  data, starting at the target instruction.
            this_pc = cpu_state.pc;
            for (i = 0; i < DISASSEMBLY_LENGTH; i++)
            {
                disassembly_buffer.line[i].pc = this_pc;
                if (this_item > 0)
                {
                    // $16 is an unused opcode for the sc61860. We'll use it to
                    //  emulate the .CASE instruction.
                    disassembly_buffer.line[i].opcode = 0x16;
                    this_item -= 1;
                    this_pc += 3;
                    continue;
                }

                if (this_item == 0)
                {
                    // $17 is an unused opcode for the sc61860. We'll use it to
                    //  emulate the .DEFAULT instruction.
                    disassembly_buffer.line[i].opcode = 0x17;
                    this_item -= 1;
                    this_pc += 2;
                    continue;
                }

                uint8_t instruction =
                                  pt.read_memory(disassembly_buffer.line[i].pc);

                // This is the special case of the DTJ/PTJ case.
                if (instruction == 0x7A)
                    table_items = pt.read_memory(
                                             disassembly_buffer.line[i].pc + 1);
                if (instruction == 0x69)
                {
                    this_item = table_items;
                    table_items = -1;
                }
                disassembly_buffer.line[i].opcode = instruction;
                this_pc += find_instruction_length(this_pc, instruction);
            }
            pc_line = 0;
        }
        else
            pc_line = i;
    }

    // Print the disassembled lines, adding information if there is a pending
    // breakpoint at that address.
    char label_name[64];
    for (i = 0; i < DISASSEMBLY_LENGTH; i++)
    {
        sprintf(label_name, "label_disassembly_line%d", i);
        this_label = gtk_builder_get_object(builder, label_name);

        char disassembled_line[128];
        char image_id[128];
        disassembled_line[0] = '\0';
        print_asm_line(disassembly_buffer.line[i].pc,
                       disassembly_buffer.line[i].opcode,
                       disassembled_line);

        char *image_name;
        int bp_number = check_breakpoint(disassembly_buffer.line[i].pc);
        if (disassembly_buffer.line[i].pc == cpu_state.pc)
            image_name = "./pixmaps/disasm_pc_icon_16x16.jpg";
        else
        {
            if (bp_number == -1)
                image_name = "./pixmaps/disasm_no_icon_16x16.jpg";
            else
                image_name = "./pixmaps/disasm_breakpoint_icon_16x16.jpg";
        }

        sprintf(image_id, "image_disassembly_line_%d", i);
        GObject *this_object = gtk_builder_get_object(builder, image_id);
        gtk_image_set_from_file(GTK_IMAGE(this_object), image_name);
        sprintf(label_text, "%s", disassembled_line);
        while (strlen(label_text) < 50)
            strcat(label_text, " ");
        if (disassembly_buffer.line[i].pc == cpu_state.pc)
            format = "<span foreground=\"green\">%s</span>";
        else
            format = "<span foreground=\"black\">%s</span>";
        markup = g_markup_printf_escaped(format, label_text);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);
    }

    // P
    sprintf(label_text, "%02X", cpu_state.p);
    if (cpu_state.p < sizeof(reg_to_str) / sizeof(char *))
        sprintf(label_text + strlen(label_text),
                " -> (%s)",
                reg_to_str[cpu_state.p]);
    else
        sprintf(label_text + strlen(label_text),
                " ($%02X)",
                cpu_state.imem[cpu_state.p]);
    if ((cpu_state.p >= PORTA_OFFSET) && (cpu_state.p <= PORTC_OFFSET))
        sprintf(label_text + strlen(label_text),
                " -> (Port %s)",
                port_to_str[cpu_state.p - PORTA_OFFSET]);
    if (cpu_state.p != cpu_state_past.p)
    {
        format = "<span foreground=\"red\">\%s</span>";
        cpu_state_past.p = cpu_state.p;
    }
    else
        format = "<span foreground=\"blue\">\%s</span>";
    markup = g_markup_printf_escaped(format, label_text);
    this_label = gtk_builder_get_object(builder, "label_reg_p");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // Q
    sprintf(label_text, "%02X", cpu_state.q);
    if (cpu_state.q < sizeof(reg_to_str) / sizeof(char *))
        sprintf(label_text + strlen(label_text),
                " -> (%s)",
                reg_to_str[cpu_state.q]);
    else
        sprintf(label_text + strlen(label_text),
                " (0x%02X)",
                cpu_state.imem[cpu_state.q]);
    if ((cpu_state.q >= PORTA_OFFSET) && (cpu_state.q <= PORTC_OFFSET))
        sprintf(label_text + strlen(label_text),
                " -> (Port %s)",
                port_to_str[cpu_state.q - PORTA_OFFSET]);
    if (cpu_state.q != cpu_state_past.q)
    {
        format = "<span foreground=\"red\">\%s</span>";
        cpu_state_past.q = cpu_state.q;
    }
    else
        format = "<span foreground=\"violet\">\%s</span>";
    markup = g_markup_printf_escaped(format, label_text);
    this_label = gtk_builder_get_object(builder, "label_reg_q");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // All the scratchpad registers.
    for (i = 0; i < 12; i++)
        print_scratchpad_reg(i);

    // PC
    format = "<span foreground=\"black\">\%s</span>";
    sprintf(label_text, "%04X", cpu_state.pc);
    markup = g_markup_printf_escaped(format, label_text);
    this_label = gtk_builder_get_object(builder, "label_reg_PC");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // DP
    if (cpu_state.dp != cpu_state_past.dp)
    {
        format = "<span foreground=\"red\">\%04X</span>";
        cpu_state_past.dp = cpu_state.dp;
    }
    else
        format = "<span foreground=\"black\">\%04X</span>";
    markup = g_markup_printf_escaped(format, cpu_state.dp);
    this_label = gtk_builder_get_object(builder, "label_reg_DP");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // cDP
    if (read_mem(cpu_state.dp) != cpu_state_past.cdp)
    {
        format = "<span foreground=\"red\">\%02X</span>";
        cpu_state_past.cdp = read_mem(cpu_state.dp);
    }
    else
        format = "<span foreground=\"black\">\%02X</span>";
    markup = g_markup_printf_escaped(format, read_mem(cpu_state.dp));
    this_label = gtk_builder_get_object(builder, "label_reg_cDP");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // r
    if (cpu_state.r != cpu_state_past.r)
    {
        format = "<span foreground=\"red\">\%02X</span>";
        cpu_state_past.r = cpu_state.r;
    }
    else
        format = "<span foreground=\"black\">\%02X</span>";
    markup = g_markup_printf_escaped(format, cpu_state.r);
    this_label = gtk_builder_get_object(builder, "label_reg_r");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // Zero flag
    cpu_state.flags.zero &= 0x01;
    if (cpu_state.flags.zero != cpu_state_past.flags.zero)
    {
        format = "<span foreground=\"red\">%d</span>";
        cpu_state_past.flags.zero = cpu_state.flags.zero;
    }
    else
        format = "<span foreground=\"black\">\%d</span>";
    markup = g_markup_printf_escaped(format, cpu_state.flags.zero);
    this_label = gtk_builder_get_object(builder, "label_flag_zero");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // Carry flag
    cpu_state.flags.carry &= 0x01;
    if (cpu_state.flags.carry != cpu_state_past.flags.carry)
    {
        format = "<span foreground=\"red\">\%d</span>";
        cpu_state_past.flags.carry = cpu_state.flags.carry;
    }
    else
        format = "<span foreground=\"black\">\%d</span>";
    markup = g_markup_printf_escaped(format, cpu_state.flags.carry);
    this_label = gtk_builder_get_object(builder, "label_flag_carry");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // IOport A
    if (cpu_state.porta != cpu_state_past.porta)
    {
        format = "<span foreground=\"red\">\%02X</span>";
        cpu_state_past.porta = cpu_state.porta;
    }
    else
        format = "<span foreground=\"black\">\%02X</span>";
    markup = g_markup_printf_escaped(format, cpu_state.porta);
    this_label = gtk_builder_get_object(builder, "label_ioport_a");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // IOport B
    if (cpu_state.portb != cpu_state_past.portb)
    {
        format = "<span foreground=\"red\">\%02X</span>";
        cpu_state_past.portb = cpu_state.portb;
    }
    else
        format = "<span foreground=\"black\">\%02X</span>";
    markup = g_markup_printf_escaped(format, cpu_state.portb);
    this_label = gtk_builder_get_object(builder, "label_ioport_b");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // IOport C
    if (cpu_state.portc != cpu_state_past.portc)
    {
        format = "<span foreground=\"red\">\%02X</span>";
        cpu_state_past.portc = cpu_state.portc;
    }
    else
        format = "<span foreground=\"black\">\%02X</span>";
    markup = g_markup_printf_escaped(format, cpu_state.portc);
    this_label = gtk_builder_get_object(builder, "label_ioport_c");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // IOport F
    if (cpu_state.portf != cpu_state_past.portf)
    {
        format = "<span foreground=\"red\">\%02X</span>";
        cpu_state_past.portf = cpu_state.portf;
    }
    else
        format = "<span foreground=\"black\">\%02X</span>";
    markup = g_markup_printf_escaped(format, cpu_state.portf);
    this_label = gtk_builder_get_object(builder, "label_ioport_f");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    print_bcd_reg(0, "label_reg_XReg");
    print_bcd_reg(1, "label_reg_YReg");
    print_bcd_reg(2, "label_reg_ZReg");
    print_bcd_reg(3, "label_reg_WReg");

    for (i = 0; i < sizeof(cpu_state.imem); i++)
    {
        sprintf(label_name, "label_scratchpad_%d", i);
        this_label = gtk_builder_get_object(builder, label_name);
        if (i == cpu_state.r)
        {
            format = "<span foreground=\"green\">\%02X</span>";
            markup = g_markup_printf_escaped(format,
                                             cpu_state.imem[i]);
            gtk_label_set_markup(GTK_LABEL(this_label), markup);
            g_free(markup);
            continue;
        }

        if (i == cpu_state.p)
        {
            format = "<span foreground=\"blue\">\%02X</span>";
            markup = g_markup_printf_escaped(format, cpu_state.imem[i]);
            gtk_label_set_markup(GTK_LABEL(this_label), markup);
            g_free(markup);
            continue;
        }

        if (i == cpu_state.q)
        {
            format = "<span foreground=\"violet\">\%02X</span>";
            markup = g_markup_printf_escaped(format, cpu_state.imem[i]);
            gtk_label_set_markup(GTK_LABEL(this_label), markup);
            g_free(markup);
            continue;
        }

        if (cpu_state.imem[i] != cpu_state_past.imem[i])
        {
            format = "<span foreground=\"red\">\%02X</span>";
            cpu_state_past.imem[i] = cpu_state.imem[i];
        }
        else
            format = "<span foreground=\"black\">\%02X</span>";
        markup = g_markup_printf_escaped(format, cpu_state.imem[i]);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);
    }

    print_mem_view();
}
