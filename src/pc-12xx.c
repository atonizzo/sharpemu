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
#include <gtk/gtk.h>

#include <sc61860.h>
#include <sharpemu.h>
#include <pc12xx.h>

#if defined(MODEL_PC1245) || defined(MODEL_PC1250) || defined(MODEL_PC1251) ||\
                                                    defined(MODEL_PC1255)
address_descriptor_t address_descriptors[] =
{
    {0x009F, "[20:27] <- 0"},           {0x00A9, "[28:2F] <- 0"},
    {0x00AF, "[30:37] <- 0"},           {0x00D2, "BCD[20:27] >> 4"},
    {0x012F, "BCD[28:2F] <- 1.0"},      {0x0159, "BCD[20:27] += BCD[28:2F]"},
    {0x01FF, "[38..3F] = [20..27]"},    {0x020F, "[20..27] <- [38..3F]"},
    {0x0238, "[20:27] <- [28:2F]"},     {0x023D, "[30:37] <- [28:2F]"},
    {0x02CD, "BCD[20:27] += BCD[28:2F]"}, {0x02D4, "BCD[28:2F] += BCD[20:27]"},
    {0x02DB, "BCD[28:2F] -= BCD[20:27]"}, {0x02E2, "BCD[20:27] -= BCD[28:2F]"},
    {0x0960, "BCD[28:2F] <- 0.434294481903"},
    {0x0974, "BCD[28:2F] <- 57.2957795131"},
    {0x0D2F, "X <- [26, 25] - 1"},      {0x0D37, "X <- [2E, 2D] - 1"},
    {0x0D5B, "BCD[20:27] <- INT16[0F:0E]"}, {0x0DA3, "[22:24] <-> [32:34]"},
    {0x0DAA, "[22:24] <- [2A:2C]"},     {0x0DB1, "[22:24] += [2A:2C]"},
    {0x1118, "[C6B6, C6B5] <- X"},      {0x1125, "X <- [C6B6, C6B5]"},
    {0x115E, "DP <- F83E"},             {0x1162, "DP <- F8BE"},
    {0x1166, "DP <- C6B7"},             {0x116A, "DP <- C6DA"},
    {0x1172, "X <- Y"},                 {0x118F, "X <- [C6E2, C6E1]"},
    {0x1177, "Y <- X"},                 {0x1195, "X <-> [0C, 0D]"},
    {0x119A, "X <- C7B0 - 1 (rambuf)"}, {0x11AF, "Show screen"},
    {0x11E0, "LCD on"},                 {0x11E5, "LCD off"},
    {0x11E9, "copy_x"},                 {0x11EE, "copy_y"},
    {0x11F1, "X <- [B, A] - 1"},        {0x11F5, "Y <- [B, A] - 1"},
    {0x11F9, "Y <- C7B0 - 1 (kbdbuf)"}, {0x1200, "[1C, 1D] <- X"},
    {0x12BD, "[20..27] <- 0"},          {0x154E, "BCD[28:2F] <- 3.14159265359"},
    {0x172B, "[B, A] <<= 1"},           {0x1731, "[B, A] >>= 1"},
    {0x1899, "X <- [1D, 1C]"},
    {0x18C5, "print_prompt"},           {0x18DB, "Y <- [B, A]"},
    {0x1ACF, "X <-> [1C, 1D]"},         {0x1F44, "Scan Keyboard"},
    {0x1FB1, "Output to PORTC"},        {0x1FB6, "memcpy"},
    {0x1FF6, "[C6A7:C6AE] <-> [30:37]"},
    {0x400C, "write_lcd"},
    {0x6787, "[C6B1, C6B2] <- X"},
    {0x688E, "Clear 80 bytes of input buffer."},
    {0, 0}
};


basic_2x:       LIDP    0xC6E1      ; 0x118F
                LP      0x04        ; X <- [0xC602, 0xC601]
                MVBD                ;
                RTN                 ;
                LP      0x04        ; 0x1195
                LIQ     0x0C        ; X <-> [0C:0D]
                EXB                 ;
                RTN                 ;
kbd_bufx:       LIA     0xB0        ; 0x119A
                LIB     0xC7        ; X <- [0xC7B0, 0xC7B1] - 1



sc43536_label_t sc43536_labels[LCD_NUMBER_OF_LABELS] =
{
    {0xF83C, 1, 0, "DEF"}, {0xF83C, 2, 0, "P"}, //{0xF83C, 4, 0, "G"},
    {0xF83C, 8, 0, "DEG"},
    {0xF83D, 1, 0, "BUSY"}, {0xF83D, 2, 0, "SHIFT"}, {0xF83D, 4, 0, "GRAD"},
    {0xF83D, 8, 0, "E"},
    {0xF83E, 1, 0, "PRO"}, {0xF83E, 2, 0, "RUN"}, {0xF83E, 4, 0, "RESERVE"},
    {0xF83E, 8, 0, "E"},
};

sc43536_descriptor_t sc43536_descriptor[LCD_ROWS_PER_DISPLAY] =
{
    {
        {0xF800, 0xF8BF},
    }
};
#elif defined(MODEL_PC1260) || defined(MODEL_PC1262)
address_descriptor_t address_descriptors[] =
{
    {0x0222, "Y <- [B, A] - 1"},    {0x0225, "X <- [B, A] - 1"},
    {0x022A, "X <- 0x67AF"},        {0x0232, "X <- 0x664F"},
    {0x0238, "X <- 0x207F"},        {0x023E, "Y <- 0x67AF"},
    {0x03C1, "Scan Keyboard"},
    {0x0437, "Turn ON display"},    {0x043B, "Turn OFF display"},
    {0x043D, "Output to PORTC"},
    {0x1047, "memcpy"},             {0x133B, "X <- [39:38]"},
    {0x1344, "Y <- X"},             {0x1349, "X <- Y"},
    {0x134E, "[39:38] <- X"},
    {0x1353, "DP <- 0x203D"},       {0x1357, "DP <- 0x662B"},
    {0x135B, "DP <- 0x66DA"},
    {0x1C05, "X <- 0x664E"},        {0x1C01, "X <- 0x6666"},
    {0x1BE0, "Y <- 0x664E"},        {0x1BE7, "Y <- 0x6666"},
    {0, 0}
};

sc43536_label_t sc43536_labels[LCD_NUMBER_OF_LABELS] =
{
    {0x203D, 0x01, 0, "BUSY"},  {0x203D, 0x02, 0, "PRINT"},
    {0x203D, 0x08, 0, "KANA"},  {0x203D, 0x10, 0, "SMALL"},
    {0x203D, 0x20, 0, "SHIFT"}, {0x203D, 0x40, 0, "DEF"},
    {0x207C, 0x01, 0, "DEGREE"}, {0x207C, 0x02, 0, "RADIAN"},
    {0x207C, 0x20, 0, "ERROR"},  {0x207C, 0x40, 0, "???"},
};

sc43536_descriptor_t sc43536_descriptor[LCD_ROWS_PER_DISPLAY] =
{
    {{0x2000, 0x20BF},},
    {{0x2800, 0x28BF},}
};
#else
    #error Model not defined
#endif

void lcd_refresh()
{
    sc43536_refresh();
}

static int32_t pc_12xx_setup(void)
{
    memset(porta_kbd, '\0', sizeof(porta_kbd));
    memset(porta_kbd_past, '\0', sizeof(porta_kbd_past));

    // Create a new hbox to hold the LCD labels.
    GtkWidget *lcd_label_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 6);
    gtk_box_set_homogeneous(GTK_BOX(lcd_label_box), TRUE);

    lcd_create_widgets_id(lcd_label_box);

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

#if defined(MODEL_PC1245) || defined(MODEL_PC1250) || defined(MODEL_PC1251) ||\
                                                    defined(MODEL_PC1255)
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
#elif defined(MODEL_PC1260) || defined(MODEL_PC1262)
static uint16_t pc_12xx_memory_alias(uint16_t address)
{
    // These AND operations automaticaly create the memory imaging for DISP1...
    if ((address & 0xE800) == 0x2000)
        address = 0x2000 + (address & 0xFF);

    // ... and DISP2.
    if ((address & 0xE800) == 0x2800)
        address = 0x2800 + (address & 0xFF);
    return address;
}
#endif

static uint8_t pc_12xx_read_memory(uint16_t address)
{
    address = pc_12xx_memory_alias(address);

    // We return the real value of the internal ROM so the debugger can
    //  display the correct disassembly.
    return memory_image[address];
}

static void pc_12xx_write_memory(uint16_t address, uint8_t data)
{
    address = pc_12xx_memory_alias(address);
    if ((address >= pt.ram_start) && (address <= pt.ram_end))
    {
        memory_image[address] = data;
        return;
    }

    // Make sure that the display memory area is the last one checked. If the
    //  address does not map to the display, then it is an invalid one.
    int row;
    for (row = 0; row < LCD_ROWS_PER_DISPLAY; row++)
        if ((address >= sc43536_descriptor[row].memmap.start) &&
            (address <= sc43536_descriptor[row].memmap.stop))
            break;

    if (row == LCD_ROWS_PER_DISPLAY)
    {
        // Not for the display. Invalid memory access.
        return;
    }
    memory_image[address] = data;
    sc43536_service(address, data);
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
//    printf("in: inb(): %02x.addr: %04X\r\n", cpu_state.portb, cpu_state.pc);
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

    if ((cpu_state.portb & 0x02) != 0)
        if (cpu_state.mode == CALC_MODE_PRO)
            ret_val |= 8;

    if ((cpu_state.portb & 0x01) != 0)
        if (cpu_state.mode == CALC_MODE_RSV)
            ret_val |= 8;

    if ((cpu_state.portb & 0x04) != 0)
        if (cpu_state.mode == CALC_MODE_OFF)
            ret_val |= 8;
//    printf("out: inb(): %02x.\r\n", ret_val | cpu_state.portb);
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

model_file_descriptor_t pt =
{
#if defined(MODEL_PC1245)
    .irom = { "./rom/cpu-1251.rom", 0},
    .erom = { "./rom/bas-1251.rom", 0x4000 },
    .model_name = "PC-1245",
    .ram_start = 0xC000,
    .ram_end   = 0xC7FF,
#elif defined(MODEL_PC1250)
    .irom = { "./rom/cpu-1251.rom", 0},
    .erom = { "./rom/bas-1251.rom", 0x4000 },
    .model_name = "PC-1250",
    .ram_start = 0xC000,
    .ram_end   = 0xC7FF,
#elif defined(MODEL_PC1251)
    .irom = { "./rom/cpu-1251.rom", 0},
    .erom = { "./rom/bas-1251.rom", 0x4000 },
    .model_name = "PC-1251",
    .ram_start = 0xB800,
    .ram_end   = 0xC7FF,
#elif defined(MODEL_PC1255)
    .irom = { "./rom/cpu-1251.rom", 0},
    .erom = { "./rom/bas-1251.rom", 0x4000 },
    .model_name = "PC-1255",
    .ram_start = 0xA000,
    .ram_end   = 0xC7FF,
#elif defined(MODEL_PC1260)
    .model_name = "PC-1260",
    .irom = { "./rom/cpu-1260.rom", 0},
    .erom = { "./rom/bas-1260.rom", 0x8000 },
    .ram_start = 0x5800,
    .ram_end   = 0x67FF,
#elif defined(MODEL_PC1262)
    .model_name = "PC-1262",
    .irom = { "./rom/cpu-1260.rom", 0},
    .erom = { "./rom/bas-1260.rom", 0x8000 },
    .ram_start = 0x4000,
    .ram_end   = 0x67FF,
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
    .keypress = keyboard_keypress,
    .keyrelease = keyboard_keyrelease,
};
