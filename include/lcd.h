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

#ifndef __LCD_H__
#define __LCD_H__

#define LCD_CHARACTER_WIDTH             5
#define LCD_CHARACTER_HEIGHT            7

void write_lcd(uint16_t, uint16_t, uint8_t);
void lcd_off(void);
GtkWidget *lcd_build_display(void);

extern GtkWidget *lcd_display[LCD_ROWS_PER_DISPLAY][LCD_CHARACTERS_PER_ROW]
                                [LCD_CHARACTER_WIDTH][LCD_CHARACTER_HEIGHT];
extern uint8_t lcd_status[LCD_ROWS_PER_DISPLAY][0xC0];

#endif
