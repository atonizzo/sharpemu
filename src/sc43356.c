// Copyright (c) 2016-2017, atonizzo@lycos.com
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

// This structure reflects the status of the memory of the LCD. We'll use it
//  to avoid needless repaints.
uint8_t lcd_status[0x7C];

void lcd_setup(void)
{
    memset(lcd_status, '\0', sizeof(lcd_status));
}

void lcd_off(void)
{
    int i, j, k;

    // Turn pixels off.
    char image_name[128];
    for (i = 0; i < 24; i++)               // 24 digits.
        for (j = 0; j < 5; j++)            // 5 columns per digit.
            for (k = 0; k < 7; k++)        // 7 bits per column.
                gtk_image_set_from_file(GTK_IMAGE(lcd_display[0][i][j][k]),
                                        "./pixmaps/lcd_pixel_off.jpg");
}

void lcd_service(uint16_t address, uint8_t data)
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

