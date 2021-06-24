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

#include <stdint.h>
#include <gtk/gtk.h>

#include <sharpemu.h>
#include <pc12xx.h>

// This array represents the PC-1251 keyboard matrix. Each bit of each byte
//  represents a wire intersections in the matrix but because the way the
//  keyboard is scanned not all bits are valid.
// For example, the key 'O' is found at the intersection of the 2rd bit of
//  portA (IA3 in the schematic) and the 4th bit of port A (IA4 in the
//  schematic) and so the A3 byte in the porta_kbd[] array will be written
//  with 0x08. A7 (IA8) is not scanned.
uint8_t porta_kbd[] =
{
//   A1    A2    A3    A4    A5    A6    A7    B1    B2    B3
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

uint8_t porta_kbd_past[] =
{
//   A1    A2    A3    A4    A5    A6    A7    B1    B2    B3
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

static const keyboard_encoding_t key_map[] =
{
    {KEYBOARD_PORT_INDEX_A5, KEYBOARD_PORT_BIT_A8}, // 0x20 - ' '
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
    {KEYBOARD_PORT_INDEX_B1, KEYBOARD_PORT_BIT_A1}, // 0x2D - '-'
    {KEYBOARD_PORT_INDEX_B3, KEYBOARD_PORT_BIT_A1}, // 0x2D - '-'
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

void keyboard_keypress(uint16_t key)
{
    if (key < 0x20)
        return;

    if ((key >= 0x20) && (key < 0xB0))
    {
        porta_kbd[key_map[key - 0x20].row] |= key_map[key - 0x20].mask;
        single_step_break = 1;
        return;
    }

    switch (key)
    {
    case 0x24:                      // '$'
        porta_kbd[KEYBOARD_PORT_INDEX_A1] |= KEYBOARD_PORT_BIT_A6;
        porta_kbd[KEYBOARD_PORT_INDEX_B2] |= KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF0D:                    // Enter
        porta_kbd[KEYBOARD_PORT_INDEX_A6] |= KEYBOARD_PORT_BIT_A8;
        break;
    case 0xFF13:                    // Break
        if (cpu_state.mode == CALC_MODE_OFF)
            cpu_state.test.kon = 1;
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
    case 0xFF95:                    // Numeric Keypad 7
        porta_kbd[KEYBOARD_PORT_INDEX_A1] |= KEYBOARD_PORT_BIT_A2;
        break;
    case 0xFF96:                    // Numeric Keypad 4
        porta_kbd[KEYBOARD_PORT_INDEX_A1] |= KEYBOARD_PORT_BIT_A4;
        break;
    case 0xFF97:                    // Numeric Keypad 8
        porta_kbd[KEYBOARD_PORT_INDEX_B3] |= KEYBOARD_PORT_BIT_A2;
        break;
    case 0xFF98:                    // Numeric Keypad 6
        porta_kbd[KEYBOARD_PORT_INDEX_B2] |= KEYBOARD_PORT_BIT_A4;
        break;
    case 0xFF99:                    // Numeric Keypad 2
        porta_kbd[KEYBOARD_PORT_INDEX_B3] |= KEYBOARD_PORT_BIT_A3;
        break;
    case 0xFF9A:                    // Numeric Keypad 9
        porta_kbd[KEYBOARD_PORT_INDEX_B2] |= KEYBOARD_PORT_BIT_A2;
        break;
    case 0xFF9B:                    // Numeric Keypad 3
        porta_kbd[KEYBOARD_PORT_INDEX_B2] |= KEYBOARD_PORT_BIT_A3;
        break;
    case 0xFF9C:                    // Numeric Keypad 1
        porta_kbd[KEYBOARD_PORT_INDEX_A1] |= KEYBOARD_PORT_BIT_A3;
        break;
    case 0xFF9D:                    // Numeric Keypad 5
        porta_kbd[KEYBOARD_PORT_INDEX_B3] |= KEYBOARD_PORT_BIT_A4;
        break;
    case 0xFF9E:                    // Numeric Keypad 0
        porta_kbd[KEYBOARD_PORT_INDEX_A7] |= KEYBOARD_PORT_BIT_A8;
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
        // Discard.
        break;
    }
}

void keyboard_keyrelease(uint16_t key)
{
    if (key < 0x20)
        return;

    if ((key >= 0x20) && (key < 0xB0))
    {
        porta_kbd[key_map[key - 0x20].row] &= ~key_map[key - 0x20].mask;
        return;
    }

    switch (key)
    {
    case 0x24:                      // '$'
        g_print("'$' released\r\n");
        porta_kbd[KEYBOARD_PORT_INDEX_A1] &= ~KEYBOARD_PORT_BIT_A6;
        porta_kbd[KEYBOARD_PORT_INDEX_B2] &= ~KEYBOARD_PORT_BIT_A5;
        break;
    case 0xFF0D:                    // Enter
        porta_kbd[KEYBOARD_PORT_INDEX_A6] &= ~KEYBOARD_PORT_BIT_A8;
        break;
    case 0xFF13:                    // Break
        cpu_state.test.kon = 0;
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
    case 0xFF95:                    // Numeric Keypad 7
        porta_kbd[KEYBOARD_PORT_INDEX_A1] &= ~KEYBOARD_PORT_BIT_A2;
        break;
    case 0xFF96:                    // Numeric Keypad 4
        porta_kbd[KEYBOARD_PORT_INDEX_A1] &= ~KEYBOARD_PORT_BIT_A4;
        break;
    case 0xFF97:                    // Numeric Keypad 8
        porta_kbd[KEYBOARD_PORT_INDEX_B3] &= ~KEYBOARD_PORT_BIT_A2;
        break;
    case 0xFF98:                    // Numeric Keypad 6
        porta_kbd[KEYBOARD_PORT_INDEX_B2] &= ~KEYBOARD_PORT_BIT_A4;
        break;
    case 0xFF99:                    // Numeric Keypad 2
        porta_kbd[KEYBOARD_PORT_INDEX_B3] &= ~KEYBOARD_PORT_BIT_A3;
        break;
    case 0xFF9A:                    // Numeric Keypad 9
        porta_kbd[KEYBOARD_PORT_INDEX_B2] &= ~KEYBOARD_PORT_BIT_A2;
        break;
    case 0xFF9B:                    // Numeric Keypad 3
        porta_kbd[KEYBOARD_PORT_INDEX_B2] &= ~KEYBOARD_PORT_BIT_A3;
        break;
    case 0xFF9C:                    // Numeric Keypad 1
        porta_kbd[KEYBOARD_PORT_INDEX_A1] &= ~KEYBOARD_PORT_BIT_A3;
        break;
    case 0xFF9D:                    // Numeric Keypad 5
        porta_kbd[KEYBOARD_PORT_INDEX_B3] &= ~KEYBOARD_PORT_BIT_A4;
        break;
    case 0xFF9E:                    // Numeric Keypad 0
        porta_kbd[KEYBOARD_PORT_INDEX_A7] &= ~KEYBOARD_PORT_BIT_A8;
        break;
    case 0xFFAA:                    // '/' on the numeric pad.
        porta_kbd[KEYBOARD_PORT_INDEX_B1] &= ~KEYBOARD_PORT_BIT_A3;
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
        g_print("Unhandled Key Released - 0x%04X, (%d)\r\n", key, (int16_t)key);
        // Discard.
        break;
    }
}

