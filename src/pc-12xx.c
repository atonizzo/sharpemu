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

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <sc61860_emu.h>

#include <pc1245.h>

GtkWidget *lcd_label_box;
GtkWidget *lcd_display[LCD_CHARACTER_ROWS][LCD_CHARACTER_PER_ROW]
                            [LCD_COLUMNS_PER_CHARACTER][LCD_PIXEL_PER_COLUMN];

// We are going to name these indexes from A1 through A8 and from B1 to B3
//  to be consistent to the naming convention in the manual
#define KEYBOARD_PORT_INDEX_A1         0
#define KEYBOARD_PORT_INDEX_A2         1
#define KEYBOARD_PORT_INDEX_A3         2
#define KEYBOARD_PORT_INDEX_A4         3
#define KEYBOARD_PORT_INDEX_A5         4
#define KEYBOARD_PORT_INDEX_A6         5
#define KEYBOARD_PORT_INDEX_A7         6
#define KEYBOARD_PORT_INDEX_A8         7
#define KEYBOARD_PORT_INDEX_B1         8
#define KEYBOARD_PORT_INDEX_B2         9
#define KEYBOARD_PORT_INDEX_B3         10
#define KEYBOARD_PORT_BIT_A1           (1 << 0)
#define KEYBOARD_PORT_BIT_A2           (1 << 1)
#define KEYBOARD_PORT_BIT_A3           (1 << 2)
#define KEYBOARD_PORT_BIT_A4           (1 << 3)
#define KEYBOARD_PORT_BIT_A5           (1 << 4)
#define KEYBOARD_PORT_BIT_A6           (1 << 5)
#define KEYBOARD_PORT_BIT_A7           (1 << 6)
#define KEYBOARD_PORT_BIT_A8           (1 << 7)

address_descriptor_t address_descriptors[] =
{
    {0, 0}
};

struct
{
    uint16_t  id;
    uint8_t   kbd;
    uint8_t   count;
} keyboard_count;

uint8_t porta_kbd[] =
{
//   A1    A2    A3    A4    A5    A6    A7    A8    B1    B2    B3
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t porta_kbd_past[] =
{
//   A1    A2    A3    A4    A5    A6    A7    A8    B1    B2    B3
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

label_layout_t lcd_labels[15] =
{
    {0, "DEF"}, {0, "PRO"},   {0, "RUN"}, {0, "RESERVE"},
    {0, "DE"},  {0, "GRAD"},  {0, "P"},   {0, "BUSY"},
    {0, 0},     {0, "SHIFT"}, {0, 0},     {0, 0},
    {0, 0},     {0, 0},       {0, "E"}
};

static GtkWidget *lcd_create_column(unsigned int character, unsigned int column)
{
    int i;
    char widget_name[64];
    char path_name[512];

    // Create a new vbox to hold a single column of pixels.
    GtkWidget *lcd_column_box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);

    // Each column is made up of 7 pixels. Every 5 pixels there is a spacer
    //  column.
    for (i = 0; i < LCD_PIXEL_PER_COLUMN; i++)
    {
        GtkWidget *this_image =
                         gtk_image_new_from_file("./pixmaps/lcd_pixel_off.jpg");
        g_assert(this_image != NULL);
        gtk_widget_show(this_image);
        gtk_box_pack_start(GTK_BOX(lcd_column_box),
                           this_image,
                           TRUE,
                           TRUE,
                           1);
        lcd_display[0][character][column][i] = this_image;
    }
    gtk_widget_show(lcd_column_box);
    return lcd_column_box;
}

static GtkWidget *lcd_create_spacer(void)
{
    int i;
    char widget_name[64];
    char path_name[512];

    // Create a new vbox to hold a single column of pixels.
    GtkWidget *lcd_spacer_box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);

    // Each column is made up of 7 pixels.
    for (i = 0; i < LCD_PIXEL_PER_COLUMN; i++)
    {
        GtkWidget *this_image =
                  gtk_image_new_from_file("./pixmaps/digit_separator.jpg");
        g_assert(this_image != NULL);
        gtk_widget_show(this_image);
        gtk_box_pack_start(GTK_BOX(lcd_spacer_box),
                           this_image,
                           TRUE,
                           TRUE,
                           1);
    }
    gtk_widget_show(lcd_spacer_box);
    return lcd_spacer_box;
}

static GtkWidget *lcd_build_display(void)
{
    int i, j;

    // Create a new hbox to hold the 24 LCD characters.
    GtkWidget *lcd_char_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0);

    // Each character in the LCD is made up of 5 columns of pixels, each
    //  7 pixel in height, followed by a separator column.
    for (i = 0; i < LCD_CHARACTER_PER_ROW; i++)
    {
        for (j = 0; j < LCD_COLUMNS_PER_CHARACTER; j++)
        {
            GtkWidget *this_column = lcd_create_column(i, j);
            gtk_box_pack_start(GTK_BOX(lcd_char_box),
                               this_column,
                               TRUE,
                               TRUE,
                               1);
        }

        // There is a spacer between each character.
        GtkWidget *this_column = lcd_create_spacer();
        gtk_box_pack_start(GTK_BOX(lcd_char_box),
                           this_column,
                           TRUE,
                           TRUE,
                           1);
    }
    gtk_widget_show(GTK_WIDGET(lcd_char_box));
    return lcd_char_box;
}

static void lcd_setup(void)
{
    memset(lcd_status, '\0', sizeof(lcd_status));
}

static void lcd_service(uint16_t address, uint8_t data)
{
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
        lcd_status[0x3C] = data;
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
        lcd_status[0x3D] = data;
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
        lcd_status[0x3E] = data;
        return;
    }

    uint16_t column_number;
    if (((address >= 0xF800) && (address < 0xF83C)) ||
                                    ((address >= 0xF840) && (address < 0xF87C)))
    {
        if (address < 0xF83C)
            column_number = address - 0xF800;
        else
            column_number = 0xF87B - address + 60;
        int i;
        char image_name[32];
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
        lcd_status[address - 0xF800] = data;
    }
}

static void lcd_off(void)
{
    int i, j, k;

    // Turn pixels off.
    char image_name[128];
    for (i = 0; i < LCD_CHARACTER_PER_ROW; i++)          // 16 digits.
        for (j = 0; j < LCD_COLUMNS_PER_CHARACTER; j++)  // 5 columns per digit.
            for (k = 0; k < LCD_PIXEL_PER_COLUMN; k++)   // 7 bits per column.
                gtk_image_set_from_file(GTK_IMAGE(lcd_display[0][i][j][k]),
                                        "./pixmaps/lcd_pixel_off.jpg");
}

static const keyboard_encoding_t key_map[] =
{
    {KEYBOARD_PORT_INDEX_A5, KEYBOARD_PORT_INDEX_A8}, // 0x20 - ' '
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

static void pc_1245_keypress(uint16_t key)
{
    if (key < 0x20)
        return;

    if ((key >= 0x20) && (key < 0xB0))
    {
        porta_kbd[key_map[key - 0x20].row] |= key_map[key - 0x20].mask;
        return;
    }

    switch (key)
    {
    case 0xFF0D:                    // Enter
        porta_kbd[KEYBOARD_PORT_INDEX_A6] |= KEYBOARD_PORT_BIT_A8;
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
        break;
    }
}

static void pc_1245_keyrelease(uint16_t key)
{
    keyboard_count.id = 0;
    keyboard_count.kbd = 0;
    keyboard_count.count = 0;
    if (key < 0x20)
        return;

    if ((key >= 0x20) && (key < 0xB0))
    {
        porta_kbd[key_map[key - 0x20].row] &= ~(key_map[key - 0x20].mask);
        return;
    }

    switch (key)
    {
    case 0xFF0D:                    // Enter
        porta_kbd[KEYBOARD_PORT_INDEX_A6] &= ~KEYBOARD_PORT_BIT_A8;
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
        g_print("Unhandled Key Released - %04X, (%d)\r\n", key, (int16_t)key);
        break;
    }
}
