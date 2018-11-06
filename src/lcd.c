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

#if defined(pc1245)
#include <pc1245.h>
#elif defined(pc1251)
#include <pc1251.h>
#elif defined(pc1262)
#include <pc1262.h>
#else
#error Calculator not defined.
#endif

// This structure reflects the status of the memory of the LCD. We'll use it
//  to avoid needless repaints.
// There are 124 bytes of memory to each SC43536.
uint8_t lcd_status[LCD_CHARACTER_ROWS][0x7C];

void lcd_off(void)
{
    int i, j, k, l;

    // Turn pixels off.
    for (i = 0; i < LCD_CHARACTER_ROWS; i++)
        for (j = 0; j < LCD_CHARACTERS_PER_ROW; j++)
            for (k = 0; k < LCD_COLUMNS_PER_CHARACTER; k++)
                for (l = 0; l < LCD_PIXELS_PER_COLUMN; l++)
                    gtk_image_set_from_file(GTK_IMAGE(lcd_display[i][j][k][l]),
                                        "./pixmaps/lcd_pixel_off.jpg");
}

static GtkWidget *lcd_create_spacer(void)
{
    int i;

    // Create a new vbox to hold a single column of pixels.
    GtkWidget *lcd_spacer_box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
    for (i = 0; i < LCD_PIXELS_PER_COLUMN; i++)
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

static GtkWidget *lcd_create_column(unsigned int row,
                                    unsigned int character,
                                    unsigned int column)
{
    int i;

    // Create a new vbox to hold a single column of pixels.
    GtkWidget *lcd_column_box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
    for (i = 0; i < LCD_PIXELS_PER_COLUMN; i++)
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
        lcd_display[row][character][column][i] = this_image;
    }
    gtk_widget_show(lcd_column_box);
    return lcd_column_box;
}

GtkWidget *lcd_build_display(void)
{
    int i, j, k;

    // Create a new vbox to hold the individual rows of characters.
    GtkWidget *lcd_row_box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
    g_assert(lcd_row_box != NULL);
    for (i = 0; i < LCD_CHARACTER_ROWS; i++)
    {
        // Create a new hbox to hold the LCD characters.
        GtkWidget *lcd_char_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0);
        g_assert(lcd_char_box != NULL);
        for (j = 0; j < LCD_CHARACTERS_PER_ROW; j++)
        {
            for (k = 0; k < LCD_COLUMNS_PER_CHARACTER; k++)
            {
                GtkWidget *this_column = lcd_create_column(i, j, k);
                gtk_box_pack_start(GTK_BOX(lcd_char_box),
                                   this_column,
                                   TRUE,
                                   TRUE,
                                   1);
            }

            // There is a spacer between each character.
            GtkWidget *this_column = lcd_create_spacer();
            g_assert(this_column != NULL);
            gtk_box_pack_start(GTK_BOX(lcd_char_box),
                               this_column,
                               TRUE,
                               TRUE,
                               1);
            gtk_widget_show(this_column);
        }
        gtk_widget_show(lcd_char_box);
        gtk_box_pack_start(GTK_BOX(lcd_row_box), lcd_char_box, TRUE, TRUE, 1);
    }    
    gtk_widget_show(GTK_WIDGET(lcd_row_box));
    return lcd_row_box;
}
