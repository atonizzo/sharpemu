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

#ifndef __SC61860_H__
#define __SC61860_H__

typedef struct __sc61860_instr
{
    // 31:24 - Addressing mode
    // 15:08 - Number of cycles.
    //         if (15:12) is < 0x0F then the cycles must be increased by
    //            (15:12) * d, where d is the loop counter register.
    //         if (15:12 == 0x0F the count is the instruction operand, as
    //            in the case of the 'wait' instruction.
    // 07:00 - Number of bytes for the instruction.
    uint32_t attributes;
    uint8_t  mask;
    uint8_t  mask_value;
    char*    opcode;
    void     (* emulate)(void);
} sc61860_instr_t;

struct __bcd_register
{
    uint8_t r[8];
} __attribute__((__packed__));

#define regnum(field)    ((unsigned long) \
                    &(((struct __sc61860_iregs *) 0)->field))

#define IRAM_REG_I                  0x00
#define IRAM_REG_J                  0x01
#define IRAM_REG_A                  0x02
#define IRAM_REG_B                  0x03
#define IRAM_REG_XL                 0x04
#define IRAM_REG_XH                 0x05
#define IRAM_REG_YL                 0x06
#define IRAM_REG_YH                 0x07
#define IRAM_REG_K                  0x08
#define IRAM_REG_L                  0x09
#define IRAM_REG_M                  0x0A
#define IRAM_REG_N                  0x0B
#define IRAM_REG_BCD1               0x10
#define IRAM_REG_BCD2               0x18
#define IRAM_REG_BCD3               0x20
#define IRAM_REG_BCD4               0x28
#define IRAM_PORTA                  0x5c
#define IRAM_PORTB                  0x5d
#define IRAM_PORTC                  0x5f
#define IRAM_PORTF                  0x5e

struct __cpu_state
{
    struct
    {
        uint8_t carry;
        uint8_t zero;
    } flags;
    struct
    {
        uint8_t ct1;
        uint8_t ct2;
        uint8_t kon;
        uint8_t rst;
        uint8_t xin;
    } test;
    uint8_t  d;         // Shadow count register.
    uint8_t  p;
    uint8_t  q;
    uint8_t  r;         // Stack pointer.
    uint8_t  h;         // SC61860 undocumanted register.
                        // See https://github.com/utz82/SC61860-Instruction-Set
    uint16_t dp;
    uint16_t pc;
    uint32_t cycles;
    uint8_t porta;
    uint8_t portb;
    uint8_t portf;
    uint8_t portc;
    int     table_items;
    int     current_item;
    uint8_t cdp;       // The value of the byte pointed to by DP.
    uint8_t mode;
    uint8_t imem[96];
};

extern struct __cpu_state cpu_state;
extern struct __cpu_state cpu_state_past;

uint32_t print_asm_line(uint16_t, uint8_t, GString *);
uint32_t sc61860_disassembler(uint16_t, uint8_t, GString *);
void emulate_instruction(void);
void sim_not_implemented(void);
void print_layout(void);
#endif
