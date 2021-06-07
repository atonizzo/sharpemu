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

#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define HEX_COLUMN                                   6
#define INSTRUCTION_COLUMN                           14
#define OPERAND_COLUMN                               21
#define COMMENT_COLUMN                               28

#define SC61860_FORMAT_TERM                         (0 << 24)
#define SC61860_FORMAT_IMMEDIATE8                   (1 << 24)
#define SC61860_FORMAT_NOOPERAND                    (2 << 24)
#define SC61860_FORMAT_IMMEDIATE16                  (3 << 24)
#define SC61860_FORMAT_RELATIVE_PLUS                (4 << 24)
#define SC61860_FORMAT_RELATIVE_MINUS               (5 << 24)
#define SC61860_FORMAT_ADDRESS16                    (6 << 24)
#define SC61860_FORMAT_IMMEDIATE6                   (7 << 24)
#define SC61860_FORMAT_ADDRESS13                    (8 << 24)
#define SC61860_FORMAT_PTJ                          (9 << 24)
#define SC61860_FORMAT_DTJ                          (10 << 24)
#define SC61860_FORMAT_CASE                         (11 << 24)
#define SC61860_FORMAT_DEFAULT                      (12 << 24)

uint8_t memory_image[65536];

int32_t this_item = -1;
int32_t table_items = -1;

FILE *fp_rom;

typedef struct __sc61860_instr
{
    // 31:24 - Addressing mode
    // 15:08 - Number of cycles.
    //         if (15:12) is < 0x0F then the cycles must be increased by
    //            (15:12) * d, where d is the loop counter register.
    //         if (15:12 == 0x0F the count is the instruction operand, as
    //            in te case of the 'wait' instruction.
    // 07:00 - Number of bytes for the instruction.
    uint32_t attributes;
    uint8_t  mask;
    uint8_t  mask_value;
    char*    opcode;
    void     (* simulate)(void);
} sc61860_instr_t;

const sc61860_instr_t sc61860_instr[] =
{
    {SC61860_FORMAT_CASE + (0x3 << 8) + 3, 0xFF, 0x16, ".case", 0},
    {SC61860_FORMAT_DEFAULT + (0x3 << 8) + 2, 0xFF, 0x17, ".default", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x00, "lii", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x01, "lij", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x02, "lia", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x03, "lib", 0},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x04, "ix", 0},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x05, "dx", 0},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x06, "iy", 0},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x07, "dy", 0},
    {SC61860_FORMAT_NOOPERAND + (0x25 << 8) + 1, 0xFF, 0x08, "mvw", 0},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x09, "exw", 0},
    {SC61860_FORMAT_NOOPERAND + (0x25 << 8) + 1, 0xFF, 0x0A, "mvb", 0},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0b, "exb", 0},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0c, "adn", 0},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0d, "sbn", 0},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0e, "adw", 0},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0f, "sbw", 0},
    {SC61860_FORMAT_IMMEDIATE16 + (8 << 8) + 3, 0xFF, 0x10, "lidp", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (5 << 8) + 2, 0xFF, 0x11, "lidl", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x12, "lip", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x13, "liq", 0},
    {SC61860_FORMAT_NOOPERAND + (0x5 << 8) + 1, 0xFF, 0x14, "adb", 0},
    {SC61860_FORMAT_NOOPERAND + (0x5 << 8) + 1, 0xFF, 0x15, "sbb", 0},
    {SC61860_FORMAT_NOOPERAND + (0x45 << 8) + 1, 0xFF, 0x18, "mvwd", 0},
    {SC61860_FORMAT_NOOPERAND + (0x67 << 8) + 1, 0xFF, 0x19, "exwd", 0},
    {SC61860_FORMAT_NOOPERAND + (0x45 << 8) + 1, 0xFF, 0x1a, "mvbd", 0},
    {SC61860_FORMAT_NOOPERAND + (0x67 << 8) + 1, 0xFF, 0x1b, "exbd", 0},
    {SC61860_FORMAT_NOOPERAND + (0x15 << 8) + 1, 0xFF, 0x1c, "srw", 0},
    {SC61860_FORMAT_NOOPERAND + (0x15 << 8) + 1, 0xFF, 0x1d, "slw", 0},
    {SC61860_FORMAT_NOOPERAND + (0x15 << 8) + 1, 0xFF, 0x1e, "film", 0},
    {SC61860_FORMAT_NOOPERAND + (0x34 << 8) + 1, 0xFF, 0x1f, "fild", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x20, "ldp", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x21, "ldq", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x22, "ldr", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x23, "ra", 0},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x24, "ixl", 0},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x25, "dxl", 0},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x26, "iys", 0},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x27, "dys", 0},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x28, "jrnzp", 0},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x29, "jrnzm", 0},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x2a, "jrncp", 0},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x2b, "jrncm", 0},
    {SC61860_FORMAT_RELATIVE_PLUS + (7 << 8) + 2, 0xFF, 0x2c, "jrp", 0},
    {SC61860_FORMAT_RELATIVE_MINUS + (7 << 8) + 2, 0xFF, 0x2d, "jrm", 0},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x7a << 8) + 2, 0xFF, 0x2f, "loop", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x30, "stp", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x31, "stq", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x32, "str", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x34, "push", 0},
    {SC61860_FORMAT_NOOPERAND + (0x4b << 8) + 1, 0xFF, 0x35, "data", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x37, "rtn", 0},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x38, "jrzp", 0},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x39, "jrzm", 0},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x3a, "jrcp", 0},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x3b, "jrcm", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x40, "inci", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x41, "deci", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x42, "inca", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x43, "deca", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x44, "adm", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x45, "sbm", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x46, "anma", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x47, "orma", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x48, "inck", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x49, "deck", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x4a, "incm", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x4b, "decm", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x4c, "ina", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x4d, "nopw", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (0xF4 << 8) + 2, 0xFF, 0x4e, "wait", 0},
    {SC61860_FORMAT_NOOPERAND + (0x45 << 8) + 1, 0xFF, 0x4f, "waiti", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x50, "incp", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x51, "decp", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x52, "std", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x53, "mvdm", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x54, "readm", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x55, "mvmd", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x56, "read", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x57, "ldd", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x58, "swp", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x59, "ldm", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x5a, "sl", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x5b, "pop", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x5d, "outa", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x5f, "outf", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x60, "anim", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x61, "orim", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x62, "tsim", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x63, "cpim", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x64, "ania", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x65, "oria", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x66, "tsia", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x67, "cpia", 0},
    {SC61860_FORMAT_DTJ + (0 << 8) + 4, 0xFF, 0x7A, "dtj", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x6b, "test", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x70, "adim", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x71, "sbim", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x74, "adia", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x75, "sbia", 0},
    {SC61860_FORMAT_ADDRESS16 + (8 << 8) + 3, 0xFF, 0x78, "call", 0},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x79, "jp", 0},
    {SC61860_FORMAT_PTJ + (9 << 8) + 1, 0xFF, 0x69, "ptj", 0},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7c, "jpnz", 0},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7d, "jpnc", 0},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7e, "jpz", 0},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7f, "jpc", 0},
    {SC61860_FORMAT_IMMEDIATE6 + (1 << 8) + 1, 0xC0, 0x80, "lp", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc0, "incj", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc1, "decj", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc2, "incb", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc3, "decb", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc4, "adcm", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc5, "sbcm", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc6, "tsma", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc7, "cpma", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc8, "incl", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc9, "decl", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xca, "incn", 0},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xcb, "decn", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xcc, "inb", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xce, "nopt", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd0, "sc", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd1, "rc", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd2, "sr", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (6 << 8) + 2, 0xFF, 0xd4, "anid", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (6 << 8) + 2, 0xFF, 0xd5, "orid", 0},
    {SC61860_FORMAT_IMMEDIATE8 + (6 << 8) + 2, 0xFF, 0xd6, "tsid", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd8, "leave", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xda, "exab", 0},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xdb, "exam", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xdd, "outb", 0},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xdf, "outc", 0},
    {SC61860_FORMAT_ADDRESS13 + (7 << 8) + 2, 0xe0, 0xe0, "cal", 0},
    {SC61860_FORMAT_TERM, 0, 0, "", 0},
};

int debug_break(int a)
{
    return 0;
}

static void print_shift(char* p, int32_t len)
{
    int32_t character_count = strlen(p);
    while (character_count++ < len)
        strcat(p, " ");
    // Print an extra blank so there is at least one buffer blank.
    strcat(p, " ");
}

static size_t print_instruction(uint16_t address,
                                uint16_t offset,
                                uint8_t instruction,
                                uint32_t index,
                                char *p)
{
    uint8_t operand0, operand1;
    uint16_t target_address;

    switch (sc61860_instr[index].attributes & 0xFF000000)
    {
    case SC61860_FORMAT_IMMEDIATE8:
        operand0 = memory_image[address + 1];
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand0,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "0x%02X", operand0);
        break;
    case SC61860_FORMAT_NOOPERAND:
        sprintf(p,
                "%02X           %s",
                instruction,
                sc61860_instr[index].opcode);
        break;
    case SC61860_FORMAT_IMMEDIATE16:
        operand0 = memory_image[address + 1];
        operand1 = memory_image[address + 2];
        sprintf(p,
                "%02X %02X %02X     %s",
                instruction,
                operand0,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "0x%04X", operand0 * 256 + operand1);
        break;
    case SC61860_FORMAT_ADDRESS16:
        operand0 = memory_image[address + 1];
        operand1 = memory_image[address + 2];
        sprintf(p,
                "%02X %02X %02X     %s",
                instruction,
                operand0,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "0x%04X", operand0 * 256 + operand1);
        break;
    case SC61860_FORMAT_IMMEDIATE6:
        operand0 = instruction & 0x3F;
        sprintf(p,
                "%02X           %s",
                instruction,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "0x%02X", operand0);
        break;
    case SC61860_FORMAT_ADDRESS13:
        operand0 = instruction & 0x1F;
        operand1 = memory_image[address + 1];
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        target_address = operand0 * 256 + operand1;
        sprintf(p + strlen(p), "0x%04X", target_address);
        break;
    case SC61860_FORMAT_RELATIVE_PLUS:
        operand0 = memory_image[address + 1];
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand0,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "0x%04X", address + offset + operand0 + 1);
        break;
    case SC61860_FORMAT_RELATIVE_MINUS:
        operand0 = memory_image[address + 1];
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand0,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "0x%04X", address + offset - operand0 + 1);
        break;
    case SC61860_FORMAT_PTJ:
        sprintf(p,
                "%02X           %s",
                instruction,
                sc61860_instr[index].opcode);
        this_item = table_items;
        break;
    case SC61860_FORMAT_DTJ:
        table_items = memory_image[address + 1];
        uint16_t addr = (memory_image[address + 2] << 8) |
                                                memory_image[address + 3];
        sprintf(p,
                "%02X %02X %02X %02X  %s",
                instruction,
                table_items,
                memory_image[address + 2],
                memory_image[address + 3],
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "0x%02X, $%04X", table_items, addr);
        break;
    case SC61860_FORMAT_CASE:
        sprintf(p,
                "%02X %02X %02X     %s",
                memory_image[address],
                memory_image[address + 1],
                memory_image[address + 2],
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p),
                "0x%02X, 0x%04X",
                memory_image[address],
                memory_image[address + 1] * 256 + memory_image[address + 2]);
        break;
    case SC61860_FORMAT_DEFAULT:
        sprintf(p,
                "%02X %02X        %s",
                memory_image[address],
                memory_image[address + 1],
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p),
                "0x%04X",
                memory_image[address] * 256 + memory_image[address + 1]);
        break;
    default:
        break;
    }
    return sc61860_instr[index].attributes & 0xFF;
}

static uint32_t sc61860_disassembler(uint16_t offset,
                                     uint16_t address,
                                     uint8_t instruction,
                                     char *p)
{
    sprintf(p, "%04X: ", offset + address);
    if (this_item > 0)
    {
        // If the string pointer is null we are going to return only
        //  the number of bytes of the instruciton, either 2 or 4.
        if (p != 0)
        {
            this_item -= 1;
            int a = strlen(p);
            return print_instruction(address, offset, 0x16, 0, p + a);
        }
    }

    if (this_item == 0)
    {
        // If the string pointer is null we are going to return only
        //  the number of bytes of the instruciton, either 2 or 4.
        if (p != 0)
        {
            this_item -= 1;
            int a = strlen(p);
            return print_instruction(address, offset, 0x17, 1, p + a);
        }
    }
    uint32_t i = 0;
    while (sc61860_instr[i].attributes != 0)
    {
        if ((instruction & sc61860_instr[i].mask) ==
                                           sc61860_instr[i].mask_value)
        {
            // If the string pointer is null we are going to return only
            //  the number of bytes of the instruciton, either 2 or 4.
            if (p != 0)
            {
                return print_instruction(address,
                                         offset,
                                         instruction,
                                         i,
                                         p + strlen(p));
            }
        }
        i++;
    }
    // Unrecognized instruction.
    sprintf(p, "%04X: %02X           ???", address + offset, instruction);
    return 1;
}

static void print_usage()
{
    printf("Usage: sc61860_disasm [options]\r\n");
    printf("[options]\r\n");
    printf("-i fname    Input file name\r\n");
    printf("-o offset   Offset to add to address printout\r\n");
}

int main(int argc, char *argv[])
{
    char *fname = 0;
    uint16_t offset = 0;
    int c;
    while ((c = getopt (argc, argv, "i:o:")) != -1)
    {
        switch (c)
        {
        case 'i':
            fname = optarg;
            break;
        case 'o':
            offset = atoi(optarg);
            break;
        default:
            print_usage();
            return -1;
        }
    }
    if (fname == 0)
    {
        print_usage();
        return -1;
    }

    FILE *fp_rom = fopen(fname, "rb");
    if (fp_rom == NULL)
    {
        printf("Cannot open %s file.\r\n", fname);
        return -1;
    }

    // Find the size of the file.
    fseek(fp_rom, 0L, SEEK_END);
    uint32_t file_size = ftell(fp_rom);
    rewind(fp_rom);
    uint16_t mem_address = 0;

    do
    {
        memory_image[mem_address] = fgetc(fp_rom);
        mem_address += 1;
    }
    while (mem_address < file_size);
    fclose(fp_rom);

    char p[256];
    mem_address = 0;
    while (mem_address < file_size)
    {
        mem_address += sc61860_disassembler(offset,
                                            mem_address,
                                            memory_image[mem_address],
                                            p);
        printf("%s\r\n", p);
    }

    return 0;
}
