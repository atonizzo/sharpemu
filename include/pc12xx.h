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

#ifndef __PC12XX_H__
#define __PC12XX_H__

#if defined(MODEL_PC1245)
#define LCD_ROWS_PER_DISPLAY            1
#define LCD_CHARACTERS_PER_ROW          16
#define LCD_NUMBER_OF_LABELS            11
#elif defined(MODEL_PC1250)
#define LCD_ROWS_PER_DISPLAY            1
#define LCD_CHARACTERS_PER_ROW          24
#define LCD_NUMBER_OF_LABELS            11
#elif defined(MODEL_PC1251)
#define LCD_ROWS_PER_DISPLAY            1
#define LCD_CHARACTERS_PER_ROW          24
#define LCD_NUMBER_OF_LABELS            11
#elif defined(MODEL_PC1255)
#define LCD_ROWS_PER_DISPLAY            1
#define LCD_CHARACTERS_PER_ROW          24
#define LCD_NUMBER_OF_LABELS            11
#elif defined(MODEL_PC1260)
#define LCD_ROWS_PER_DISPLAY            2
#define LCD_CHARACTERS_PER_ROW          24
#define LCD_NUMBER_OF_LABELS            10
#elif defined(MODEL_PC1262)
#define LCD_ROWS_PER_DISPLAY            2
#define LCD_CHARACTERS_PER_ROW          24
#define LCD_NUMBER_OF_LABELS            10
#else
    #error Model not defined
#endif

#define LCD_LABEL_DEF                   0
#define LCD_LABEL_PRO                   1
#define LCD_LABEL_RUN                   2
#define LCD_LABEL_RESERVE               3
#define LCD_LABEL_DE                    4
#define LCD_LABEL_GRAD                  5
#define LCD_LABEL_P                     6
#define LCD_LABEL_BUSY                  7
#define LCD_LABEL_SHIFT                 9
#define LCD_LABEL_E                     14

extern label_layout_t lcd_labels[15];

// We are going to name these indexes from IA1 through IA7 and from IB1 to IB3
//  to be consistent to the naming convention in the manual
#define KEYBOARD_PORT_INDEX_A1         0
#define KEYBOARD_PORT_INDEX_A2         1
#define KEYBOARD_PORT_INDEX_A3         2
#define KEYBOARD_PORT_INDEX_A4         3
#define KEYBOARD_PORT_INDEX_A5         4
#define KEYBOARD_PORT_INDEX_A6         5
#define KEYBOARD_PORT_INDEX_A7         6
#define KEYBOARD_PORT_INDEX_B1         7
#define KEYBOARD_PORT_INDEX_B2         8
#define KEYBOARD_PORT_INDEX_B3         9
#define KEYBOARD_PORT_BIT_A1           (1 << 0)
#define KEYBOARD_PORT_BIT_A2           (1 << 1)
#define KEYBOARD_PORT_BIT_A3           (1 << 2)
#define KEYBOARD_PORT_BIT_A4           (1 << 3)
#define KEYBOARD_PORT_BIT_A5           (1 << 4)
#define KEYBOARD_PORT_BIT_A6           (1 << 5)
#define KEYBOARD_PORT_BIT_A7           (1 << 6)
#define KEYBOARD_PORT_BIT_A8           (1 << 7)

#include <sc43536.h>

#endif
