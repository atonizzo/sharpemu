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

#include <sc61860_emu.h>
#if defined(MODEL_PC1245) || defined(MODEL_PC1250) || defined(MODEL_PC1251) ||\
                                                         defined(MODEL_PC1255)
#include <pc12xx.h>
#else
#include <pc126x.h>
#endif



// This structure reflects the status of the memory of the LCD. We'll use it
//  to avoid needless repaints.
// There are 192 bytes of memory to each SC43536.
uint8_t lcd_status[LCD_ROWS_PER_DISPLAY][0xC0];

void lcd_off(void)
{
    int i, j, k, l;

    // Turn pixels off.
    for (i = 0; i < LCD_ROWS_PER_DISPLAY; i++)
        for (j = 0; j < LCD_CHARACTERS_PER_ROW; j++)
            for (k = 0; k < LCD_CHARACTER_WIDTH; k++)
                for (l = 0; l < LCD_CHARACTER_HEIGHT; l++)
                    gtk_image_set_from_file(GTK_IMAGE(lcd_display[i][j][k][l]),
                                        "./pixmaps/lcd_pixel_off.jpg");
}

gboolean on_lcd_window_key_event(GtkWidget   *widget,
                                 GdkEventKey *event,
                                 gpointer     user_data)
{
    switch (event->type)
    {
    case GDK_KEY_PRESS:
        pt.keypress(event->keyval);
        break;
    case GDK_KEY_RELEASE:
        pt.keyrelease(event->keyval);
        break;
    default:
        break;
    }
    return TRUE;
}

static GtkWidget *lcd_create_spacer(void)
{
    int i;

    // Create a new vbox to hold a single column of pixels.
    GtkWidget *lcd_spacer_box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 0);
    for (i = 0; i < LCD_CHARACTER_HEIGHT; i++)
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
    for (i = 0; i < LCD_CHARACTER_HEIGHT; i++)
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
    for (i = 0; i < LCD_ROWS_PER_DISPLAY; i++)
    {
        // Create a new hbox to hold the LCD characters.
        GtkWidget *lcd_char_box = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0);
        g_assert(lcd_char_box != NULL);
        for (j = 0; j < LCD_CHARACTERS_PER_ROW; j++)
        {
            for (k = 0; k < LCD_CHARACTER_WIDTH; k++)
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
