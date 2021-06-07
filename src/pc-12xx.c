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

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include <sys/time.h>

#include <sc61860_emu.h>
#include <pc12xx.h>

GtkWidget *lcd_label_box;
GtkWidget *lcd_display[LCD_ROWS_PER_DISPLAY][LCD_CHARACTERS_PER_ROW]
                            [LCD_CHARACTER_WIDTH][LCD_CHARACTER_HEIGHT];

address_descriptor_t address_descriptors[] =
{
#if defined(MODEL_PC1245)
#elif defined(MODEL_PC1250)
#elif defined(MODEL_PC1251)
    {0x009F, "Xreg = 0"},               {0x00A9, "Yreg = 0"},
    {0x00AF, "Zreg = 0"},               {0x0159, "YReg += XReg"},
    {0x012F, "YReg = 1.0"},             {0x020F, "XReg = WReg"},
    {0x01FF, "WReg = XReg"},            {0x0238, "YReg = XReg"},
    {0x023D, "(0x30 .. 0x37) <- (0x28 .. 0x2F)"},
    {0x02CD, "XReg += YReg"},           {0x02CA, "YReg += XReg"},
    {0x02DB, "YReg -= XReg"},           {0x02E2, "XReg -= YReg"},
    {0x0D2F, "X <- (0x26, 0x25) - 1"},  {0x0D37, "X <- (0x2E, 0x2D) - 1"},
    {0x0DAA, "(0x22 .. 0x24) <- (0x2A .. 0x2C)"},
    {0x1118, "($C6B6, $C6B5) <- X"},    {0x1125, "X <- ($C6B6, $C6B5)"},
    {0x115E, "DP <- $F83E"},            {0x1162, "DP <- $F8BE"},
    {0x1166, "DP <- $C6B7"},            {0x116A, "DP <- $C6DA"},
    {0x1172, "X <- Y"},                 {0x118F, "X <- ($C6E2, $C6E1)"},
    {0x1177, "Y <- X"},                 {0x1195, "[$0C, $0D] <-> X"},
    {0x119A, "X <- $C7B0 - 1 (rambuf)"},
    {0x11AF, "Show screen"},
    {0x11E0, "LCD on"},                 {0x11E5, "LCD off"},
    {0x11E9, "copy_x"},                 {0x11EE, "copy_y"},
    {0x11F1, "X <- [B, A] - 1"},        {0x11F5, "Y <- [B, A] - 1"},
    {0x11F9, "Y <- 0xC7B0 (kbdbuf)"},   {0x1200, "[$1C, $1D] <- X"},
    {0x12BD, "XReg = 0"},
    {0x1F44, "scan_kbd"},               {0x1ACF, "X <-> ($1C, $1D)"},
    {0x172B, "[B, A] <<= 1"},           {0x1731, "[B, A] >>= 1"},
    {0x1899, "X <- ($1D, $1C)"},
    {0x18C5, "print_prompt"},           {0x1FB1, "wr_portc"},
    {0x18DB, "Y <- (B, A)"},            {0x1FB6, "memcpy"},
    {0x400C, "write_lcd"},
    {0x688E, "Clear 80 bytes of input buffer."},
#elif defined(MODEL_PC1255)
#else
    #error Model not defined
#endif
    {0, 0}
};

// This array represents the PC-1251 keyboard matrix. Each bit of each byte
//  represents a wire intersections in the matrix but because the way the
//  keyboard is scanned not all bits are valid.
// For example, the key 'O' is found at the intersection of the 2rd bit of
//  portA (IA3 in the schematic) and the 4th bit of port A (IA4 in the
//  schematic) and so the A3 byte in the porta_kbd[] array will be written
//  with 0x08. A7 (IA8) is not scanned.
uint8_t porta_kbd[] =
{
//   A1    A2    A3    A4    A5    A6    A7    B1    B2    B3
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t porta_kbd_past[] =
{
//   A1    A2    A3    A4    A5    A6    A7    B1    B2    B3
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

label_layout_t lcd_labels[15] =
{
    {0, "DEF"}, {0, "PRO"},   {0, "RUN"}, {0, "RESERVE"},
    {0, "DE"},  {0, "GRAD"},  {0, "P"},   {0, "BUSY"},
    {0, 0},     {0, "SHIFT"}, {0, 0},     {0, 0},
    {0, 0},     {0, 0},       {0, "E"}
};

label_descriptor_t label_descriptor[] =
{
    {0xF83C, {{0, "DEF"},  {0, "P"},     {0, "G"},       {0, "DE"},
              {0, 0},      {0, 0},       {0, 0},         {0, 0}}},
    {0xF83D, {{0, "BUSY"}, {0, "SHIFT"}, {0, "RAD"},     {0, "E"},
              {0, 0},      {0, 0},       {0, 0},         {0, 0}}},
    {0xF83E, {{0, "PRO"},  {0, "RUN"},   {0, "RESERVE"}, {0, "E"},
              {0, 0},      {0, 0},       {0, 0},         {0, 0}}},
    {0,      {{0, 0},      {0, 0},       {0, 0},         {0, 0},
              {0, 0},      {0, 0},       {0, 0},         {0, 0}}},
};

static void lcd_service(uint16_t address, uint8_t data)
{
//    if ((cpu_state.portc & 0x01) == 0)
//        return;
    char *format = "<span foreground=\"%s\">DEF</span>";
    char *markup;
    GtkWidget *this_label;
    if (address == 0xF83C)
    {
        format = "<span foreground=\"%s\">DEF</span>";
        if ((data & 1) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_DEF].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);

        format = "<span foreground=\"%s\">P</span>";
        if ((data & 2) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_P].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);

        if ((memory_image[0xF83D] & 4) == 0)
            format = "<span foreground=\"%s\">G</span>";
        else
            format = "<span foreground=\"%s\">GRAD</span>";
        if ((data & 4) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_GRAD].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);

        format = "<span foreground=\"%s\">DE</span>";
        if ((data & 8) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_DE].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);
        lcd_status[0][0x3C] = data;
        return;
    }

    if (address == 0xF83D)
    {
        format = "<span foreground=\"%s\">BUSY</span>";
        if ((data & 1) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_BUSY].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);

        format = "<span foreground=\"%s\">SHIFT</span>";
        if ((data & 2) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_SHIFT].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);

        if ((memory_image[0xF83C] & 4) == 0)
        format = "<span foreground=\"%s\"> RAD</span>";
        else
            format = "<span foreground=\"%s\">GRAD</span>";
        if ((data & 4) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_GRAD].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);

        format = "<span foreground=\"%s\">E</span>";
        if ((data & 8) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_E].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);
        lcd_status[0][0x3D] = data;
        return;
    }

    if (address == 0xF83E)
    {
        format = "<span foreground=\"%s\">PRO</span>";
        if ((data & 1) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_PRO].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);

        format = "<span foreground=\"%s\">RUN</span>";
        if ((data & 2) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_RUN].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);

        format = "<span foreground=\"%s\">RESERVE</span>";
        if ((data & 4) == 0)
            markup = g_markup_printf_escaped(format, "white");
        else
            markup = g_markup_printf_escaped(format, "black");
        this_label = lcd_labels[LCD_LABEL_RESERVE].id;
        ASSERT_NE(this_label, NULL);
        gtk_label_set_markup(GTK_LABEL(this_label), markup);
        g_free(markup);
        lcd_status[0][0x3E] = data;
        return;
    }

    if (address < 0xF8C0)
    {
        if (((address >= 0xF800) && (address < 0xF83C)) ||
                                ((address >= 0xF840) && (address < 0xF87C)))
        {
            uint16_t column_number;
            if (address < 0xF83C)
                column_number = address - 0xF800;
            else
                column_number = 0xF87B - address + 60;
            int i;
            char *file_name;
            for (i = 0; i < 7; i++)
            {
                if ((data & 1) == 0)
                    file_name = "./pixmaps/lcd_pixel_off.jpg";
                else
                    file_name = "./pixmaps/lcd_pixel_on.jpg";
                data >>= 1;
                gtk_image_set_from_file(GTK_IMAGE(
                       lcd_display[0][column_number / 5][column_number % 5][i]),
                                        file_name);
            }
        }
        lcd_status[0][address - 0xF800] = data;
    }
}

static int32_t pc_12xx_setup(void)
{
    int i, j;
    memset(porta_kbd, '\0', sizeof(porta_kbd));
    memset(porta_kbd_past, '\0', sizeof(porta_kbd_past));

    // Create a new hbox to hold the LCD labels.
    GtkWidget *lcd_label_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 6);

    char widget_name[64];
    for (i = 0; i < sizeof(lcd_labels) / sizeof(label_layout_t); i++)
    {
        lcd_labels[i].id = (GtkWidget *)gtk_label_new(lcd_labels[i].text);
        if (lcd_labels[i].text != 0)
        {
            strcpy(widget_name, "lcd_label_");
            for (j = 0; j < strlen(lcd_labels[i].text); j++)
                sprintf(widget_name + strlen(widget_name),
                        "%c",
                        tolower(lcd_labels[i].text[j]));
            gtk_widget_set_name(lcd_labels[i].id, widget_name);
        }
        gtk_box_pack_start(GTK_BOX(lcd_label_box),
                           lcd_labels[i].id,
                           TRUE,
                           TRUE,
                           6);
        gtk_widget_show(GTK_WIDGET(lcd_labels[i].id));
    }

    GObject *this_box = gtk_builder_get_object(builder, "lcd_window_box");
    gtk_box_pack_start(GTK_BOX(this_box), lcd_label_box, TRUE, TRUE, 1);
    gtk_widget_show(GTK_WIDGET(lcd_label_box));

    GtkWidget *lcd_char_box = lcd_build_display();
    gtk_box_pack_start(GTK_BOX(this_box), lcd_char_box, TRUE, TRUE, 4);
    gtk_widget_show(GTK_WIDGET(lcd_char_box));

    GObject *lcd_window = gtk_builder_get_object(builder, "lcd_window");
    gtk_window_set_resizable(GTK_WINDOW(lcd_window), FALSE);
    gtk_window_set_title (GTK_WINDOW(lcd_window), pt.model_name);

    gtk_widget_show(GTK_WIDGET(lcd_window));
    memset(lcd_status, '\0', sizeof(lcd_status));
    lcd_off();
    cpu_state.test.kon = 0;
    return 0;
}

static uint16_t pc_12xx_memory_alias(uint16_t address)
{
// There is a fair amount of aliasing in the PC-1245 through PC-1255 machines
//  and few memory maps out there show it. The assumption here is that this
//  aliasing happens both on READ and WRITE accesses to memory.
// No accesses to these aliased memory areas were observed during the writing
//  of this emulator.
// From what I was able to gather the
//  following areas are aliased.
//  0x8000 ... 0x9FFF Is an alias for the 0xA000 ... 0xBFFF area
//  0xB000 ... 0xB800 Is an alias for the 0xB800 ... 0xBFFF area
//  0xD000 ... 0xD800 Is an alias for the 0xC000 ... 0xC7FF area
//  0xF900 ... 0xFFFF Is an alias for the 0xF800 ... 0xF8C0 area repeated
//                                                                  8 times.
#if defined(MODEL_PC1245) || defined(MODEL_PC1250) || defined(MODEL_PC1251)

    if ((address >= 0xB000) && address < 0xB800)
        return address + 0x800;
#endif
    if ((address >= 0x8000) && address < 0xA000)
        return address + 0x2000;
    if ((address >= 0xD000) && address < 0xD800)
        return address - 0x1000;
    if (address >= 0xF900)
        return 0xF800 + (address & 0x00FF);
    return address;
}

static uint8_t pc_12xx_read_memory(uint16_t address)
{
    address = pc_12xx_memory_alias(address);

    // We return the real value of the internal ROM so the debugger can
    //  display the correct disassembly.
    return memory_image[address];
}

static void pc_12xx_write_memory(uint16_t address, uint8_t value)
{
    address = pc_12xx_memory_alias(address);
    if ((address >= pt.ram_start) && (address <= pt.ram_end))
        memory_image[address] = value;

    // LCD memory.
    if ((address >= 0xF800) && (address < 0xF900))
    {
        memory_image[address] = value;
        lcd_service(address, value);
    }
}

// Port A is used exclusively for the keyboard. We scan which of the 11 bits
//  in PortB[3:1] and PortA[8:1] are being driven by the keyboard scan routine.
// The bits being driven are those set in cpu_state.porta or cpu_state.portb
//  and only one of these bits is set at any given point in time.
// If any of them is set, we seek the porta_kbd[] array to see if any key
//  has been pressed.
static uint8_t pc_12xx_ina(void)
{
    uint8_t ret_val = 0;
    uint16_t id = ((cpu_state.portb & 0x07) << 7) | cpu_state.porta;
    for (int i = 0; i < sizeof(porta_kbd); i++)
        if ((id & (1 << i)) != 0)
            ret_val |= porta_kbd[i];
    return ret_val | cpu_state.porta;
}

static uint8_t pc_12xx_inb(void)
{
    uint8_t ret_val = 0;
    if ((cpu_state.portb & 0x08) != 0)
    {
        switch (cpu_state.mode)
        {
        case CALC_MODE_RUN:
            break;
        case CALC_MODE_RSV:
            ret_val = 1;
            break;
        case CALC_MODE_PRO:
            ret_val = 2;
            break;
        default:
            ret_val = 4;
            break;
        }
    }
    return ret_val | cpu_state.portb;
}

static void pc_12xx_outa(void)
{
    cpu_state.porta = cpu_state.imem[IRAM_PORTA];
}

static void pc_12xx_outb(void)
{
    cpu_state.portb = cpu_state.imem[IRAM_PORTB];
}

static void pc_12xx_outc(void)
{
    fprintf(fp_memaccess,
            "S: %04x W: PORTC - %02X\r\n",
            cpu_state.pc,
            cpu_state.imem[IRAM_PORTC]);

    if ((cpu_state.imem[IRAM_PORTC] & PORTC_CPU_HLT) != 0)
    {
        fprintf(fp_memaccess, "S: %04x CPU clock is halted.\r\n", cpu_state.pc);
    }

    if ((cpu_state.imem[IRAM_PORTC] & PORTC_CNTRST) != 0)
    {
        fprintf(fp_memaccess, "S: %04x Counter is reset\r\n", cpu_state.pc);
        gettimeofday(&timeval_start, NULL);
        cpu_state.imem[IRAM_PORTC] &= ~PORTC_CNTRST;
    }
    cpu_state.portc = cpu_state.imem[IRAM_PORTC];
}

static void pc_12xx_outf(void)
{
    cpu_state.portf = cpu_state.imem[IRAM_PORTF];
}

static const keyboard_encoding_t key_map[] =
{
    {KEYBOARD_PORT_INDEX_A5, KEYBOARD_PORT_BIT_A8}, // 0x20 - ' '
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {KEYBOARD_PORT_INDEX_B1, KEYBOARD_PORT_BIT_A1}, // 0x2D - '-'
    {KEYBOARD_PORT_INDEX_B3, KEYBOARD_PORT_BIT_A1}, // 0x2D - '-'
    {0x00, 0x00},
    {KEYBOARD_PORT_INDEX_A7, KEYBOARD_PORT_BIT_A8}, // 0x30 - '0'
    {KEYBOARD_PORT_INDEX_A1, KEYBOARD_PORT_BIT_A3}, // 0x31 - '1'
    {KEYBOARD_PORT_INDEX_B3, KEYBOARD_PORT_BIT_A3}, // 0x32 - '2'
    {KEYBOARD_PORT_INDEX_B2, KEYBOARD_PORT_BIT_A3}, // 0x33 - '3'
    {KEYBOARD_PORT_INDEX_A1, KEYBOARD_PORT_BIT_A4}, // 0x34 - '4'
    {KEYBOARD_PORT_INDEX_B3, KEYBOARD_PORT_BIT_A4}, // 0x35 - '5'
    {KEYBOARD_PORT_INDEX_B2, KEYBOARD_PORT_BIT_A4}, // 0x36 - '6'
    {KEYBOARD_PORT_INDEX_A1, KEYBOARD_PORT_BIT_A2}, // 0x37 - '7'
    {KEYBOARD_PORT_INDEX_B3, KEYBOARD_PORT_BIT_A2}, // 0x38 - '8'
    {KEYBOARD_PORT_INDEX_B2, KEYBOARD_PORT_BIT_A2}, // 0x39 - '9'
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00}, // 0x40
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00}, // 0x50
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00}, // 0x60
    {KEYBOARD_PORT_INDEX_B3, KEYBOARD_PORT_BIT_A7}, // 'A'
    {KEYBOARD_PORT_INDEX_A2, KEYBOARD_PORT_BIT_A8}, // 'B'
    {KEYBOARD_PORT_INDEX_B1, KEYBOARD_PORT_BIT_A8}, // 'C'
    {KEYBOARD_PORT_INDEX_B1, KEYBOARD_PORT_BIT_A7}, // 'D'
    {KEYBOARD_PORT_INDEX_B1, KEYBOARD_PORT_BIT_A6}, // 'E'
    {KEYBOARD_PORT_INDEX_A1, KEYBOARD_PORT_BIT_A7}, // 'F'
    {KEYBOARD_PORT_INDEX_A2, KEYBOARD_PORT_BIT_A7}, // 'G'
    {KEYBOARD_PORT_INDEX_A3, KEYBOARD_PORT_BIT_A7}, // 'H'
    {KEYBOARD_PORT_INDEX_A5, KEYBOARD_PORT_BIT_A6}, // 'I'
    {KEYBOARD_PORT_INDEX_A4, KEYBOARD_PORT_BIT_A7}, // 'J'
    {KEYBOARD_PORT_INDEX_A5, KEYBOARD_PORT_BIT_A7}, // 'K'
    {KEYBOARD_PORT_INDEX_A6, KEYBOARD_PORT_BIT_A7}, // 'L'
    {KEYBOARD_PORT_INDEX_A4, KEYBOARD_PORT_BIT_A8}, // 'M'
    {KEYBOARD_PORT_INDEX_A3, KEYBOARD_PORT_BIT_A8}, // 'N'
    {KEYBOARD_PORT_INDEX_A3, KEYBOARD_PORT_BIT_A4}, // 'O'
    {KEYBOARD_PORT_INDEX_A2, KEYBOARD_PORT_BIT_A4}, // 'P'
    {KEYBOARD_PORT_INDEX_B3, KEYBOARD_PORT_BIT_A6}, // 'Q'
    {KEYBOARD_PORT_INDEX_A1, KEYBOARD_PORT_BIT_A6}, // 'R'
    {KEYBOARD_PORT_INDEX_B2, KEYBOARD_PORT_BIT_A7}, // 'S'
    {KEYBOARD_PORT_INDEX_A2, KEYBOARD_PORT_BIT_A6}, // 'T'
    {KEYBOARD_PORT_INDEX_A4, KEYBOARD_PORT_BIT_A6}, // 'U'
    {KEYBOARD_PORT_INDEX_A1, KEYBOARD_PORT_BIT_A8}, // 'V'
    {KEYBOARD_PORT_INDEX_B2, KEYBOARD_PORT_BIT_A6}, // 'W'
    {KEYBOARD_PORT_INDEX_B2, KEYBOARD_PORT_BIT_A8}, // 'X'
    {KEYBOARD_PORT_INDEX_A3, KEYBOARD_PORT_BIT_A6}, // 'Y'
    {KEYBOARD_PORT_INDEX_B3, KEYBOARD_PORT_BIT_A8}, // 'Z'
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00}, // 0x80
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00}, // 0x90
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00}, // 0xA0
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {0x00, 0x00},
    {KEYBOARD_PORT_INDEX_B1, KEYBOARD_PORT_BIT_A5}, // Arrow DOWN.
    {KEYBOARD_PORT_INDEX_A3, KEYBOARD_PORT_BIT_A5}, // Arrow RIGHT.
    {KEYBOARD_PORT_INDEX_A1, KEYBOARD_PORT_BIT_A5}, // Arrow UP.
    {KEYBOARD_PORT_INDEX_A2, KEYBOARD_PORT_BIT_A5}, // Arrow LEFT.
};

static void pc_12xx_keypress(uint16_t key)
{
    if (key < 0x20)
        return;

    if ((key >= 0x20) && (key < 0xB0))
    {
        porta_kbd[key_map[key - 0x20].row] |= key_map[key - 0x20].mask;
        single_step_break = 1;
        return;
    }

    switch (key)
    {
    case 0x24:                      // '$'
        porta_kbd[KEYBOARD_PORT_INDEX_A1] |= KEYBOARD_PORT_BIT_A6;
        porta_kbd[KEYBOARD_PORT_INDEX_B2] |= KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF0D:                    // Enter
        porta_kbd[KEYBOARD_PORT_INDEX_A6] |= KEYBOARD_PORT_BIT_A8;
        break;
    case 0xFF13:                    // Break
        if (cpu_state.mode == CALC_MODE_OFF)
            cpu_state.test.kon = 1;
        break;
    case 0xFF52:                    // ARROW-UP
        porta_kbd[KEYBOARD_PORT_INDEX_A1] |= KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF54:                    // ARROW-DOWN
        porta_kbd[KEYBOARD_PORT_INDEX_B1] |= KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF51:                    // ARROW-LEFT
        porta_kbd[KEYBOARD_PORT_INDEX_A2] |= KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF53:                    // ARROW-RIGHT
        porta_kbd[KEYBOARD_PORT_INDEX_A3] |= KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFFAA:                    // '/' on the numeric pad.
        porta_kbd[KEYBOARD_PORT_INDEX_B1] |= KEYBOARD_PORT_BIT_A3;
        break;
    case 0xFFAB:                    // '+' on the numeric pad.
        porta_kbd[KEYBOARD_PORT_INDEX_B2] |= KEYBOARD_PORT_BIT_A1;
        break;
    case 0xFFAD:                    // '-' on the numeric pad.
        porta_kbd[KEYBOARD_PORT_INDEX_B1] |= KEYBOARD_PORT_BIT_A1;
        break;
    case 0xFFAF:                    // '*' on the numeric pad.
        porta_kbd[KEYBOARD_PORT_INDEX_B1] |= KEYBOARD_PORT_BIT_A4;
        break;
    case 0xFFE1:                    // L-Shift
    case 0xFFE2:                    // R-Shift
        porta_kbd[KEYBOARD_PORT_INDEX_B2] |= KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFFFF:                    // Delete, which maps to CL.
        porta_kbd[KEYBOARD_PORT_INDEX_B1] |= KEYBOARD_PORT_BIT_A2;
        break;
    default:
        g_print("Unhandled Key Pressed - %04X, (%d)\r\n", key, (int16_t)key);
        // Discard.
        break;
    }
}

static void pc_12xx_keyrelease(uint16_t key)
{
    if (key < 0x20)
        return;

    if ((key >= 0x20) && (key < 0xB0))
    {
        porta_kbd[key_map[key - 0x20].row] &= ~key_map[key - 0x20].mask;
        return;
    }

    switch (key)
    {
    case 0x24:                      // '$'
        g_print("'$' released\r\n");
        porta_kbd[KEYBOARD_PORT_INDEX_A1] &= ~KEYBOARD_PORT_BIT_A6;
        porta_kbd[KEYBOARD_PORT_INDEX_B2] &= ~KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF0D:                    // Enter
        porta_kbd[KEYBOARD_PORT_INDEX_A6] &= ~KEYBOARD_PORT_BIT_A8;
        break;
    case 0xFF13:                    // Break
        cpu_state.test.kon = 0;
        break;
    case 0xFF52:                    // ARROW-UP
        porta_kbd[KEYBOARD_PORT_INDEX_A1] &= ~KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF54:                    // ARROW-DOWN
        porta_kbd[KEYBOARD_PORT_INDEX_B1] &= ~KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF51:                    // ARROW-LEFT
        porta_kbd[KEYBOARD_PORT_INDEX_A2] &= ~KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF53:                    // ARROW-RIGHT
        porta_kbd[KEYBOARD_PORT_INDEX_A3] &= ~KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFFAA:                    // '/' on the numeric pad.
        porta_kbd[KEYBOARD_PORT_INDEX_B1] &= ~KEYBOARD_PORT_BIT_A3;
        break;
    case 0xFFAB:                    // '+' on the numeric pad.
        porta_kbd[KEYBOARD_PORT_INDEX_B2] &= ~KEYBOARD_PORT_BIT_A1;
        break;
    case 0xFFAD:                    // '-' on the numeric pad.
        porta_kbd[KEYBOARD_PORT_INDEX_B1] &= ~KEYBOARD_PORT_BIT_A1;
        break;
    case 0xFFAF:                    // '*' on the numeric pad.
        porta_kbd[KEYBOARD_PORT_INDEX_B1] &= ~KEYBOARD_PORT_BIT_A4;
        break;
    case 0xFFE1:                    // L-Shift
    case 0xFFE2:                    // R-Shift
        porta_kbd[KEYBOARD_PORT_INDEX_B2] &= ~KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFFFF:                    // Delete, which maps to CL.
        porta_kbd[KEYBOARD_PORT_INDEX_B1] &= ~KEYBOARD_PORT_BIT_A2;
        break;
    default:
        g_print("Unhandled Key Released - 0x%04X, (%d)\r\n", key, (int16_t)key);
        // Discard.
        break;
    }
}

model_file_descriptor_t pt =
{
#if defined(MODEL_PC1245)
    .model_name = "PC-1245",
    .irom = { "./rom/cpu-1245.rom", 0},
    .erom = { "./rom/bas-1245.rom", 0x4000 },
    .ram_start = 0xC000,
    .ram_end   = 0xC800,
#elif defined(MODEL_PC1250)
    .model_name = "PC-1250",
    .irom = { "./rom/cpu-1250.rom", 0},
    .erom = { "./rom/bas-1250.rom", 0x4000 },
    .ram_start = 0xC000,
    .ram_end   = 0xC800,
#elif defined(MODEL_PC1251)
    .model_name = "PC-1251",
    .irom = { "./rom/cpu-1251.rom", 0},
    .erom = { "./rom/bas-1251.rom", 0x4000 },
    .ram_start = 0xB800,
    .ram_end   = 0xC800,
#elif defined(MODEL_PC1255)
    .model_name = "PC-1255",
    .irom = { "./rom/cpu-1255.rom", 0},
    .erom = { "./rom/bas-1255.rom", 0x4000 },
    .ram_start = 0xA000,
    .ram_end   = 0xC800,
#else
    #error Model not defined
#endif
    .setup = pc_12xx_setup,
    .read_memory = pc_12xx_read_memory,
    .write_memory = pc_12xx_write_memory,
    .ina = pc_12xx_ina,
    .inb = pc_12xx_inb,
    .outa = pc_12xx_outa,
    .outb = pc_12xx_outb,
    .outc = pc_12xx_outc,
    .outf = pc_12xx_outf,
    .keypress = pc_12xx_keypress,
    .keyrelease = pc_12xx_keyrelease,
};
