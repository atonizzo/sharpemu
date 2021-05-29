// Copyright (c) 2016-2021, atonizzo@gmail.com
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

#ifndef __LCD_H__
#define __LCD_H__

#define LCD_COLUMNS_PER_CHARACTER       5
#define LCD_PIXELS_PER_COLUMN           7

extern GtkWidget *lcd_display[LCD_CHARACTER_ROWS][LCD_CHARACTERS_PER_ROW]
                            [LCD_COLUMNS_PER_CHARACTER][LCD_PIXELS_PER_COLUMN];

void write_lcd(uint16_t, uint16_t, uint8_t);
void lcd_off(void);
void sc43536_service(uint16_t, uint16_t, uint16_t, uint8_t);
GtkWidget *lcd_build_display(void);

extern GtkWidget *lcd_display[LCD_CHARACTER_ROWS][LCD_CHARACTERS_PER_ROW]
                            [LCD_COLUMNS_PER_CHARACTER][LCD_PIXELS_PER_COLUMN];
extern uint8_t lcd_status[LCD_CHARACTER_ROWS][0xC0];

extern uint16_t sc43536_base_address[];

#endif
