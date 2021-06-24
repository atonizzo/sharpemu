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
#include <gtk/gtk.h>

#include <sc61860.h>
#include <sharpemu.h>
#include <pc12xx.h>

GtkWidget *lcd_display[LCD_ROWS_PER_DISPLAY][LCD_CHARACTERS_PER_ROW]
                            [LCD_CHARACTER_WIDTH][LCD_CHARACTER_HEIGHT];

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

void lcd_create_widgets_id(GtkWidget *lcd_label_box)
{
    char widget_name[64];
    for (int i = 0; i < sizeof(sc43536_labels) / sizeof(sc43536_label_t); i++)
    {
        char *name = sc43536_labels[i].name;
        sc43536_labels[i].id = gtk_label_new(name);
        g_assert(sc43536_labels[i].id != NULL);
        strcpy(widget_name, "lcd_label_");
        for (int l = 0; l < strlen(name); l++)
            sprintf(widget_name + strlen(widget_name),
                    "%c",
                    tolower(name[l]));
        gtk_widget_set_name(sc43536_labels[i].id, widget_name);
        gtk_box_pack_start(GTK_BOX(lcd_label_box),
                           sc43536_labels[i].id,
                           TRUE,
                           TRUE,
                           6);
        gtk_widget_show(GTK_WIDGET(sc43536_labels[i].id));
    }
}

static void service_labels(uint16_t address, uint8_t data)
{
    char *markup;
    int number_of_labels = sizeof(sc43536_labels) / sizeof(sc43536_label_t);
    for (int i = 0; i < number_of_labels; i++)
    {
        if (sc43536_labels[i].address != address)
            continue;

        char *format = "<span foreground=\"%s\">%s</span>";
        char *color;
        if ((data & sc43536_labels[i].bitmask) == 0)
            color = "white";
        else
            color = "black";
        char *label_name = sc43536_labels[i].name;
#if defined(MODEL_PC1245) || defined(MODEL_PC1250) || defined(MODEL_PC1251) ||\
                                                    defined(MODEL_PC1255)
        if ((sc43536_labels[i].address == 0xF83D) &&
            (sc43536_labels[i].bitmask == 4) &&
            ((pt.read_memory(0xF83C) & 0x04) == 0))
            label_name += 1;
#endif
        markup = g_markup_printf_escaped(format, color, label_name);
        gtk_label_set_markup(GTK_LABEL(sc43536_labels[i].id), markup);
        g_free(markup);
    }
}

void sc43536_service(uint16_t address, uint8_t data)
{
    int row;
    for (row = 0; row < LCD_ROWS_PER_DISPLAY; row++)
        if ((address >= sc43536_descriptor[row].memmap.start) &&
            (address <= sc43536_descriptor[row].memmap.stop))
            break;

    if (row == LCD_ROWS_PER_DISPLAY)
        // Not for the display.
        return;

    sc43536_descriptor[row].status[address & 0xFF] = data;

    if (cpu_state.mode == CALC_MODE_OFF)
        return;

    int number_of_labels = sizeof(sc43536_labels) / sizeof(sc43536_label_t);
    for (int i = 0; i < number_of_labels; i++)
        if (sc43536_labels[i].address == address)
        {
            service_labels(address, data);
            return;
        }

    // Last resort is the main LCD array.
    if ((address < (sc43536_descriptor[row].memmap.start + 0x3C)) ||
        ((address >= (sc43536_descriptor[row].memmap.start + 0x40)) &&
         (address < (sc43536_descriptor[row].memmap.start + 0x7C))))
    {
        uint16_t column_number;
#if defined(MODEL_PC1245) || defined(MODEL_PC1250) || defined(MODEL_PC1251) ||\
                                                    defined(MODEL_PC1255)
        if (address < (sc43536_descriptor[row].memmap.start + 0x3C))
            column_number = address & 0xFF;
        else
            column_number = sc43536_descriptor[row].memmap.start +
                                                    0x7B - address + 60;
#elif defined(MODEL_PC1260) || defined(MODEL_PC1262)
        column_number = address & 0x7F;
        if (address >= (sc43536_descriptor[row].memmap.start + 0x40))
            column_number -= 4;

        // This remapping is required by the peculiar way in which the 2 LCD
        //  drivers are wired in the PC126x machines.
        // The first 12 characters of the first line are handled by the first
        //  LCD display. The second 12 characters of the first line are handled
        //  by the second LCD display. The same happens for the second line in
        //  which either display driver handles half the characters.
        if ((address >= sc43536_descriptor[1].memmap.start) &&
            (address < sc43536_descriptor[1].memmap.start + 0x3C))
        {
            // The first 12 characters handled by the second display driver
            //  map to characters 13 through 24 of the first line.
            address = address - 0x0800;
            row = 0;
            column_number += 60;
        }

        if ((address >= sc43536_descriptor[0].memmap.start + 0x40) &&
            (address < sc43536_descriptor[0].memmap.start + 0x7C))
        {
            // The second 12 characters handled by the first display driver
            //  map to characters 13 through 24 of the second line.
            address = address + 0x0800;
            row = 1;
            column_number -= 60;
        }
#else
    #error Model not defined
#endif

        int i;
        char *file_name;
        for (i = 0; i < 7; i++)
        {
            if ((data & 1) == 0)
                file_name = "./pixmaps/lcd_pixel_off.jpg";
            else
                file_name = "./pixmaps/lcd_pixel_on.jpg";
            gtk_image_set_from_file(GTK_IMAGE(
              lcd_display[row][column_number / 5][column_number % 5][i]),
                                    file_name);
            data >>= 1;
        }
    }
}

void sc43536_refresh(void)
{
    // This is certainly redoundant, but very simple.
    int number_of_labels = sizeof(sc43536_labels) / sizeof(sc43536_label_t);
    for (int i = 0; i < number_of_labels; i++)
        sc43536_service(sc43536_labels[i].address,
                        pt.read_memory(sc43536_labels[i].address));

    for (int row = 0; row < LCD_ROWS_PER_DISPLAY; row++)
        for (int address = sc43536_descriptor[row].memmap.start;
                 address < sc43536_descriptor[row].memmap.start + 0x3C;
                 address++)
        {
            __break__
            sc43536_service(address, pt.read_memory(address));
            sc43536_service(address + 0x40, pt.read_memory(address + 0x40));
        }
}
