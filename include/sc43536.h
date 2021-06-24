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

#ifndef __SC43536_H__
#define __SC43536_H__

#define LCD_CHARACTER_WIDTH             5
#define LCD_CHARACTER_HEIGHT            7

typedef struct
{
    uint16_t address;
    uint8_t bitmask;
    GtkWidget *id;
    char *name;
} sc43536_label_t;
extern sc43536_label_t sc43536_labels[LCD_NUMBER_OF_LABELS];

typedef struct
{
    uint16_t start;
    uint16_t stop;
} sc43536_memmap_t;

typedef struct
{
    sc43536_memmap_t memmap;
    uint8_t status[0xC0];
} sc43536_descriptor_t;
extern sc43536_descriptor_t sc43536_descriptor[LCD_ROWS_PER_DISPLAY];

void write_lcd(uint16_t, uint16_t, uint8_t);
void lcd_off(void);
GtkWidget *lcd_build_display(void);
void lcd_create_widgets_id(GtkWidget *);
void sc43536_service(uint16_t, uint8_t);
void sc43536_refresh(void);

extern GtkWidget *lcd_display[LCD_ROWS_PER_DISPLAY][LCD_CHARACTERS_PER_ROW]
                                [LCD_CHARACTER_WIDTH][LCD_CHARACTER_HEIGHT];
extern uint8_t lcd_status[LCD_ROWS_PER_DISPLAY][0xC0];

#endif
