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
#include <termios.h>
#include <gtk/gtk.h>

#include <sc61860.h>
#include <sharpemu.h>

GSList *disassembly_list = NULL;
static int table_items = -1;
static int current_item = -1;

int break_here(int a)
{
    return 3;
}

static const char *port_to_str[] =
{
    "A", "B", "F", "C"
};

uint8_t mem_view_past[MEM_VIEW_ROWS * 16];

// This is the index of the item inside disassembly_buffer that holds the line
//  where the program counter currently resides.
int pc_line = 0;

static void print_disasm_line(gpointer data, gpointer user_data)
{
    char *format;
    char label[128];
    char image_id[128];
    gint i = g_slist_index(disassembly_list, data);
    sprintf(label, "label_disassembly_line%d", i);
    GObject *this_label = gtk_builder_get_object(builder, label);

    gint asmdata = GPOINTER_TO_INT(g_slist_nth_data(disassembly_list, i));
    uint16_t this_pc = asmdata >> 16;
    GString *disasm_line = g_string_new(NULL);
    print_asm_line(this_pc, asmdata, disasm_line);

    char *image_name;
    int bp_number = check_breakpoint(this_pc);
    if (this_pc == cpu_state.pc)
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
    sprintf(label, "%s", disasm_line->str);
    while (strlen(label) < 50)
        strcat(label, " ");
    if (this_pc == cpu_state.pc)
        format = "<span foreground=\"green\">%s</span>";
    else
        format = "<span foreground=\"black\">%s</span>";
    char *markup = g_markup_printf_escaped(format, label);
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);
}

static uint8_t find_instruction_length(int8_t instruction)
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
    sprintf(label_name, "label_reg_%s", regs_to_str[reg]);
    GObject *this_label = gtk_builder_get_object(builder, label_name);
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);
}

static void print_bcd_reg(uint16_t reg, char *s)
{
    int i;
    int k = 0x20 + reg * 8;
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
    if (i < (k + 8))
    {
        strcpy(label_text, "<span foreground=\"red\">");
        for (i = k; i < k + 8; i++)
            cpu_state_past.imem[i] = cpu_state.imem[i];
    }
    else
        strcpy(label_text, "<span foreground=\"black\">");

    if ((cpu_state.imem[k + 1] & 0x08) != 0)
        strcat(label_text, "-");

    int16_t exp = ((cpu_state.imem[k] & 0xF0) >> 4) * 100 +
                   (cpu_state.imem[k] & 0x0F) * 10 +
                   ((cpu_state.imem[k+1] & 0xF0) >> 4);
    if (exp > 500)
        exp -= 1000;

    strcat(label_text, "%c.%c%c%c%c%c%c%c%c%c%c%cE%d</span>");
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
                    ((cpu_state.imem[k + 7] & 0xF0) >> 4) + '0',
                    (cpu_state.imem[k + 7] & 0x0F) + '0',
                    exp);
    GObject *this_label = gtk_builder_get_object(builder, s);
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);
}

static void build_disassembly_list(uint16_t from_address)
{
    g_slist_free(disassembly_list);
    disassembly_list = NULL;
    for (int i = 0; i < DISASSEMBLY_LENGTH; i++)
    {
        // The pesky .CASE and .DEFAULT cases are handled separately
        //  from any other instruction since they don't have an
        //  actual opcode.
        if (current_item > 0)
        {
            // $16 is an unused opcode for the sc61860. We'll use
            //  it to emulate the .CASE instruction.
            disassembly_list = g_slist_append(disassembly_list,
                         GINT_TO_POINTER ((from_address << 16) + 0x16));
            current_item -= 1;
            from_address += 3;
            continue;
        }

        if (current_item == 0)
        {
            // $17 is an unused opcode for the sc61860. We'll use
            //  it to emulate the .DEFAULT instruction.
            disassembly_list = g_slist_append(disassembly_list,
                         GINT_TO_POINTER ((from_address << 16) + 0x17));
            current_item -= 1;
            from_address += 2;
            continue;
        }

        uint8_t instruction = pt.read_memory(from_address);

        // This is the special case of the PTJ/DTJ case.
        if (instruction == 0x7A)
            table_items = pt.read_memory(from_address + 1);
        if (instruction == 0x69)
        {
            current_item = table_items;
            table_items = -1;
        }
        disassembly_list = g_slist_append(disassembly_list,
                  GINT_TO_POINTER ((from_address << 16) + instruction));
        from_address += find_instruction_length(instruction);
    }
}

void display_core_info(void)
{
    uint16_t this_pc;
    char label_text[128];
    char *format;
    char *markup;

    if (disassembly_list == NULL)
    {
        // This is the case where we have an empty disassembly buffer,
        //  likely the result of a reset.
        build_disassembly_list(cpu_state.pc);
        pc_line = -1;
    }

    gint data = GPOINTER_TO_INT(g_slist_nth_data(disassembly_list,
                                                 pc_line + 1));
    uint16_t next_pc = data >> 16;

    // Here we aim to build a table of the lines to disassemble. For each we
    //  determine the program counter and the instruction opcode.
    if (next_pc == cpu_state.pc)
    {
        // If the line at which the cursor is stopped is below
        //  DISASSEMBLY_CURSOR_MAX we keep the same list and we just move
        //  one line on.
        if (pc_line < DISASSEMBLY_CURSOR_MAX)
            pc_line++;
        else
        {
            // Remove the first element.
            disassembly_list = g_slist_remove(disassembly_list,
                                     g_slist_nth_data(disassembly_list, 0));
            GSList *t = g_slist_last(disassembly_list);
            gint data = GPOINTER_TO_INT(t->data);
            uint16_t address = (data >> 16) + find_instruction_length(data);
            if (current_item > 0)
            {
                // $16 is an unused opcode for the sc61860. We'll use it to
                //  emulate the .CASE instruction.
                disassembly_list = g_slist_append(disassembly_list,
                                     GINT_TO_POINTER ((address << 16) + 0x16));
                current_item -= 1;
            }
            else
            {
                if (current_item == 0)
                {
                    // $17 is an unused opcode for the sc61860. We'll use it to
                    //  emulate the .DEFAULT instruction.
                    disassembly_list = g_slist_append(disassembly_list,
                                      GINT_TO_POINTER ((address << 16) + 0x17));
                    current_item -= 1;
                }
                else
                {
                    uint8_t opcode = pt.read_memory(address);
                    disassembly_list = g_slist_append(disassembly_list,
                                   GINT_TO_POINTER ((address << 16) + opcode));
                }
            }
        }
    }
    else
    {
        cpu_state.table_items = 0;
        cpu_state.current_item = 0;
        table_items = -1;
        current_item = -1;
        // Have gone through a jump of some sort so that the next instruction
        //  in the list is not where the program counter is.
        this_pc = cpu_state.pc;
        int i;
        // In case of a relative jump of a few bytes forward or backward the
        //  target instruction might very well be already in the disassembly
        //  list and so there is no need to rebuild it.
        for (i = 0; i < DISASSEMBLY_CURSOR_MAX; i++)
        {
            gint data = GPOINTER_TO_INT(g_slist_nth_data(disassembly_list,
                                                         i));
            uint16_t address = data >> 16;
            if (address == cpu_state.pc)
                break;
        }
        if (i == DISASSEMBLY_CURSOR_MAX)
        {
            // The target address is not in the current list so its contents
            //  are stale data and we'll clear them, so we can rebuild it
            //  with the information starting at the new program counter.
            build_disassembly_list(this_pc);
            pc_line = 0;
        }
        else
            pc_line = i;
    }

    // Print the disassembled lines, adding information if there is a pending
    // breakpoint at that address.
    char label_name[64];
    g_slist_foreach(disassembly_list, print_disasm_line, 0);

    // P
    sprintf(label_text, "%02X", cpu_state.p);
    if (cpu_state.p < sizeof(regs_to_str) / sizeof(char *))
        sprintf(label_text + strlen(label_text),
                " -> (%s)",
                regs_to_str[cpu_state.p]);
    else
        sprintf(label_text + strlen(label_text),
                " (%02X)",
                cpu_state.imem[cpu_state.p]);
    if ((cpu_state.p >= IRAM_PORTA) && (cpu_state.p <= IRAM_PORTC))
        sprintf(label_text + strlen(label_text),
                " -> (Port %s)",
                port_to_str[cpu_state.p - IRAM_PORTA]);
    if (cpu_state.p != cpu_state_past.p)
    {
        format = "<span foreground=\"red\">\%s</span>";
        cpu_state_past.p = cpu_state.p;
    }
    else
        format = "<span foreground=\"blue\">\%s</span>";
    markup = g_markup_printf_escaped(format, label_text);
    GObject *this_label = gtk_builder_get_object(builder, "label_reg_p");
    gtk_label_set_markup(GTK_LABEL(this_label), markup);
    g_free(markup);

    // Q
    sprintf(label_text, "%02X", cpu_state.q);
    if (cpu_state.q < sizeof(regs_to_str) / sizeof(char *))
        sprintf(label_text + strlen(label_text),
                " -> (%s)",
                regs_to_str[cpu_state.q]);
    else
        sprintf(label_text + strlen(label_text),
                " (0x%02X)",
                cpu_state.imem[cpu_state.q]);
    if ((cpu_state.q >= IRAM_PORTA) && (cpu_state.q <= IRAM_PORTC))
        sprintf(label_text + strlen(label_text),
                " -> (Port %s)",
                port_to_str[cpu_state.q - IRAM_PORTA]);
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
    for (int i = 0; i < sizeof(regs_to_str) / sizeof(char *); i++)
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

    for (int i = 0; i < sizeof(cpu_state.imem); i++)
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
