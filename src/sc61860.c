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
#include <string.h>
#include <stdlib.h>
#include <sys/time.h>
#include <gtk/gtk.h>

#include <sc61860.h>
#include <sharpemu.h>

#define HEX_COLUMN                                   6
#define INSTRUCTION_COLUMN                           14
#define OPERAND_COLUMN                               24
#define COMMENT_COLUMN                               32

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

const char *regs_to_str[] =
{
    "I", "J", "A", "B", "Xl", "Xh", "Yl", "Yh", "K", "L", "M", "N"
};

void sim_not_implemented(void)
{
    printf("Instruction not implemented at address: %04X, opcode: %02X\r\n",
            cpu_state.pc,
            read_mem(cpu_state.pc));
    exit(-1);
}

static int16_t add_bcd(uint8_t a, uint8_t b, uint8_t carry)
{
    uint16_t result = (a & 0x0F) + (b & 0x0F) + carry;
    if (result > 9)
        result += 6;
    result += (a & 0xF0) + (b & 0xF0);
    if (result > 0x99)
        result += 0x60;
    return result;
}

static int16_t sub_bcd(uint8_t a, uint8_t b, uint8_t carry)
{
    if (b == 0)
    {
        if (carry == 0)
            return a;
        else
        {
            b = 1;
            carry = 0;
        }
    }
    b = 0x99 - b;       // 10s complement of b.
    if (carry == 0)
        b = add_bcd(b, 1, 0);
    return add_bcd(a, b, 0) ^ 0x100;
}

void sim_arith(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    int32_t tmp0, tmp1;
    switch (instruction)
    {
    case 0x14:          // "adb"        [P+1,P] + (B,A) -> [P+1,P]
                        //              P + 1 -> P
        tmp0 = cpu_state.imem[cpu_state.p + 1] << 8;
        tmp0 |= cpu_state.imem[cpu_state.p];
        tmp1 = (cpu_state.imem[IRAM_REG_B] << 8) | cpu_state.imem[IRAM_REG_A];
        tmp0 += tmp1;
        cpu_state.imem[cpu_state.p + 1] = tmp0 >> 8;
        cpu_state.imem[cpu_state.p] = tmp0;
        cpu_state.p += 1;
        cpu_state.p &= 0x7F;
        cpu_state.flags.carry = ((tmp0 & 0xFFFF0000) != 0);
        cpu_state.flags.zero = ((tmp0 & 0xFFFF) == 0);
        cpu_state.cycles += 5;
        break;
    case 0x15:          // "sbb"        [P+1,P] - (B,A)-> [P+1,P]
                        //              P + 1 -> P
        tmp0 = cpu_state.imem[cpu_state.p + 1] << 8;
        tmp0 |= cpu_state.imem[cpu_state.p];
        tmp1 = (cpu_state.imem[IRAM_REG_B] << 8) | cpu_state.imem[IRAM_REG_A];
        tmp0 -= tmp1;
        cpu_state.imem[cpu_state.p + 1] = tmp0 >> 8;
        cpu_state.imem[cpu_state.p] = tmp0;
        cpu_state.p += 1;
        cpu_state.p &= 0x7F;
        cpu_state.flags.carry = ((tmp0 & 0xFFFF0000) != 0);
        cpu_state.flags.zero = ((tmp0 & 0xFFFF) == 0);
        cpu_state.cycles += 5;
        break;
    case 0x44:          // "adm"        [P] + A -> [P]
        tmp0 = cpu_state.imem[cpu_state.p] + cpu_state.imem[IRAM_REG_A];
        cpu_state.imem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 > 0xFF);
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0x45:          // "sbm"        [P] - A -> [P]
        tmp0 = cpu_state.imem[cpu_state.p] - cpu_state.imem[IRAM_REG_A];
        cpu_state.imem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 < 0);
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0x70:          // "adim"       [P] + n -> [P]
        cpu_state.pc += 1;
        tmp0 = cpu_state.imem[cpu_state.p] + read_mem(cpu_state.pc);
        cpu_state.imem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 & 0x0100) >> 8;
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x71:          // "sbim"       [P] - n -> [P]
        g_print("Untested instruction: SBIM\r\n");
        cpu_state.pc += 1;
        tmp0 = cpu_state.imem[cpu_state.p] - read_mem(cpu_state.pc);
        cpu_state.imem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 < 0);
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x74:          // "adia"       A + n -> A
        cpu_state.pc += 1;
        tmp0 = cpu_state.imem[IRAM_REG_A] + read_mem(cpu_state.pc);
        cpu_state.imem[IRAM_REG_A] = tmp0;
        cpu_state.flags.carry = (tmp0 & 0x0100) >> 8;
        cpu_state.flags.zero = (cpu_state.imem[IRAM_REG_A] == 0);
        cpu_state.cycles += 3;
        break;
    case 0x75:          // "sbia"       A - n -> A
        cpu_state.pc += 1;
        tmp0 = cpu_state.imem[IRAM_REG_A] - read_mem(cpu_state.pc);
        cpu_state.imem[IRAM_REG_A] = tmp0;
        cpu_state.flags.carry = tmp0 < 0;
        cpu_state.flags.zero = (tmp0 == 0);
        cpu_state.cycles += 3;
        break;
    case 0xc4:          // "adcm"       [P] + A + C -> [P]
        tmp0 = cpu_state.imem[cpu_state.p] + cpu_state.imem[IRAM_REG_A];
        tmp0 += cpu_state.flags.carry;
        cpu_state.imem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 > 0xFF);
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0xc5:          // "sbcm"       [P] - A - C -> [P]
        tmp0 = cpu_state.imem[cpu_state.p] - cpu_state.imem[IRAM_REG_A];
        tmp0 -= cpu_state.flags.carry;
        cpu_state.imem[cpu_state.p] = tmp0;
        cpu_state.flags.carry = (tmp0 < 0);
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_bcd(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint8_t b;
    uint16_t tmp;
    switch (instruction)
    {
    case 0x0c:        // "adn"  I -> d
                      //        b = A
                      //        repeat
                      //            [P] + b -> [P] (BCD)
                      //            b = 0
                      //            P - 1 -> P
                      //            d - 1 -> d
                      //        until d=FF
        fprintf(fp_memaccess, "adn - %d\r\n", cpu_state.d + 1);
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        cpu_state.cycles += 7 + 3 * cpu_state.d;
        b = cpu_state.imem[IRAM_REG_A];
        cpu_state.flags.carry = 0;
        cpu_state.flags.zero = 1;
        do
        {
            fprintf(fp_memaccess,
                    "(p): %02x a: %02x carry: %d ",
                    cpu_state.imem[cpu_state.p],
                    b,
                    cpu_state.flags.carry);
            tmp = add_bcd(cpu_state.imem[cpu_state.p],
                          b,
                          cpu_state.flags.carry);
            cpu_state.imem[cpu_state.p] = tmp;
            b = 0;
            cpu_state.flags.carry = (tmp > 0xFF);
            cpu_state.flags.zero &= (tmp == 0);
            fprintf(fp_memaccess,
                    "result: %02x carry: %d, zero: %d\r\n",
                    cpu_state.imem[cpu_state.p],
                    cpu_state.flags.carry,
                    cpu_state.flags.zero);
            cpu_state.p -= 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x0d:        // "sbn"  I -> d
                      //        repeat
                      //            [P] - A -> [P] (BCD)
                      //            P - 1 -> P
                      //            d - 1 -> d
                      //        until d=FF
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        fprintf(fp_memaccess, "sbn - %d\r\n", cpu_state.d + 1);
        cpu_state.cycles += 7 + 3 * cpu_state.d;
        b = cpu_state.imem[IRAM_REG_A];
        cpu_state.flags.carry = 0;
        cpu_state.flags.zero = 1;
        do
        {
            fprintf(fp_memaccess,
                    "(p): %02x a: %02x carry: %d ",
                    cpu_state.imem[cpu_state.p],
                    b,
                    cpu_state.flags.carry);
            tmp = sub_bcd(cpu_state.imem[cpu_state.p],
                          b,
                          cpu_state.flags.carry);
            cpu_state.imem[cpu_state.p] = tmp;
            b = 0;
            cpu_state.flags.carry = (tmp > 0xFF);
            cpu_state.flags.zero &= (tmp == 0);
            fprintf(fp_memaccess,
                    "result: %02x carry: %d, zero: %d\r\n",
                    cpu_state.imem[cpu_state.p],
                    cpu_state.flags.carry,
                    cpu_state.flags.zero);
            cpu_state.p -= 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x0e:        // "adw"
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        fprintf(fp_memaccess, "adw - %d\r\n", cpu_state.d);
        cpu_state.cycles += 7 + 3 * cpu_state.d;
        cpu_state.flags.carry = 0;
        cpu_state.flags.zero = 1;
        do
        {
            tmp = add_bcd(cpu_state.imem[cpu_state.p],
                          cpu_state.imem[cpu_state.q],
                          cpu_state.flags.carry);
            cpu_state.imem[cpu_state.p] = tmp & 0xFF;
            cpu_state.flags.carry = (tmp > 0xFF);
            cpu_state.flags.zero &= (tmp == 0);
            cpu_state.p -= 1;
            cpu_state.q -= 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        cpu_state.q -= 1;
        break;
    case 0x0f:        // "sbw"
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        fprintf(fp_memaccess, "sbw - %d\r\n", cpu_state.d);
        cpu_state.cycles += 7 + 3 * cpu_state.d;
        cpu_state.flags.carry = 0;
        cpu_state.flags.zero = 1;
        do
        {
            fprintf(fp_memaccess,
                    "    (p): %02x (q): %02x carry: %d ",
                    cpu_state.imem[cpu_state.p],
                    cpu_state.imem[cpu_state.q],
                    cpu_state.flags.carry);
            tmp = sub_bcd(cpu_state.imem[cpu_state.p],
                          cpu_state.imem[cpu_state.q],
                          cpu_state.flags.carry);
            cpu_state.imem[cpu_state.p] = tmp & 0xFF;
            cpu_state.flags.carry = (tmp > 0xFF);
            cpu_state.flags.zero &= (tmp == 0);
            fprintf(fp_memaccess,
                    "result: %02x carry: %d\r\n",
                    cpu_state.imem[cpu_state.p],
                    cpu_state.flags.carry);
            cpu_state.p -= 1;
            cpu_state.q -= 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        cpu_state.q -= 1;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_bool(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint8_t tmp;
    switch (instruction)
    {
    case 0x46:        // "anma"
        cpu_state.imem[cpu_state.p] &= cpu_state.imem[IRAM_REG_A];
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0x47:        // "orma"
        cpu_state.imem[cpu_state.p] |= cpu_state.imem[IRAM_REG_A];
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 3;
        break;
    case 0x60:        // "anim"
        cpu_state.pc += 1;
        cpu_state.imem[cpu_state.p] &= read_mem(cpu_state.pc);
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x61:        // "orim"
        cpu_state.pc += 1;
        cpu_state.imem[cpu_state.p] |= read_mem(cpu_state.pc);
        cpu_state.flags.zero = (cpu_state.imem[cpu_state.p] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x62:        // "tsim"
        cpu_state.pc += 1;
        cpu_state.flags.zero = ((cpu_state.imem[cpu_state.p] &
                                                  read_mem(cpu_state.pc)) == 0);
        cpu_state.cycles += 4;
        break;
    case 0x64:        // "ania"
        cpu_state.pc += 1;
        cpu_state.imem[IRAM_REG_A] &= read_mem(cpu_state.pc);
        cpu_state.flags.zero = (cpu_state.imem[IRAM_REG_A] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x65:        // "oria"
        cpu_state.pc += 1;
        cpu_state.imem[IRAM_REG_A] |= read_mem(cpu_state.pc);
        cpu_state.flags.zero = (cpu_state.imem[IRAM_REG_A] == 0);
        cpu_state.cycles += 4;
        break;
    case 0x66:        // "tsia"
        cpu_state.pc += 1;
        cpu_state.flags.zero = ((cpu_state.imem[IRAM_REG_A] &
                                                  read_mem(cpu_state.pc)) == 0);
        cpu_state.cycles += 4;
        break;
    case 0xc6:        // "tsma"
        // This instruction does not exist in the SC61860 machine language
        //  manual and is never used in the disassembly of the ROM.
        g_print("Untested instruction: TSMA\r\n");
        cpu_state.flags.zero = ((cpu_state.imem[cpu_state.p] &
                                             cpu_state.imem[IRAM_REG_A]) == 0);
        cpu_state.cycles += 3;
        break;
    case 0xd4:        // "anid"  (DP) & n -> (DP)
        cpu_state.pc += 1;
        tmp = read_mem(cpu_state.dp) & read_mem(cpu_state.pc);
        write_mem(cpu_state.dp, tmp);
        cpu_state.imem[cpu_state.r - 1] = tmp;
        cpu_state.flags.zero = (tmp == 0);
        cpu_state.cycles += 6;
        break;
    case 0xd5:        // "orid"  (DP) | n -> (DP)
        cpu_state.pc += 1;
        tmp = read_mem(cpu_state.dp) | read_mem(cpu_state.pc);
        write_mem(cpu_state.dp, tmp);
        cpu_state.imem[cpu_state.r - 1] = tmp;
        cpu_state.flags.zero = (tmp == 0);
        cpu_state.cycles += 6;
        break;
    case 0xd6:        // "tsid" (DP) & n
        cpu_state.pc += 1;
        cpu_state.flags.zero = ((read_mem(cpu_state.dp) &
                                                  read_mem(cpu_state.pc)) == 0);
        cpu_state.imem[cpu_state.r - 1] = read_mem(cpu_state.dp);
        cpu_state.cycles += 6;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_cal(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t new_pc;
    cpu_state.r -= 2;
    cpu_state.r &= 0x7F;
    if (instruction == 0x78)
    {
        // CALL instruction.
        cpu_state.imem[cpu_state.r + 1] = (cpu_state.pc + 3) >> 8;
        cpu_state.imem[cpu_state.r] = (cpu_state.pc + 3) & 0xFF;
        new_pc = read_mem(cpu_state.pc + 1) << 8;
        new_pc |= read_mem(cpu_state.pc + 2);
        cpu_state.pc = new_pc;
        cpu_state.cycles += 8;
    }
    else
    {
        // CAL instruction.
        cpu_state.imem[cpu_state.r + 1] = (cpu_state.pc + 2) >> 8;
        cpu_state.imem[cpu_state.r] = (cpu_state.pc + 2) & 0xFF;
        new_pc = (read_mem(cpu_state.pc) & 0x1F) << 8;
        new_pc |= read_mem(cpu_state.pc + 1);
        cpu_state.pc = new_pc;
        cpu_state.cycles += 7;
    }
}

void sim_carry(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0xd0:        // "sc"
        cpu_state.flags.carry = 1;
        break;
    case 0xd1:        // "rc"
        cpu_state.flags.carry = 0;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.flags.zero = 1;
    cpu_state.pc += 1;
    cpu_state.cycles += 2;
}

void sim_case(void)
{
}

void sim_cp(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    int16_t tmp0;
    switch (instruction)
    {
    case 0x63:        // "cpim"
        tmp0 = cpu_state.imem[cpu_state.p] - read_mem(cpu_state.pc + 1);
        cpu_state.pc += 2;
        cpu_state.cycles += 4;
        break;
    case 0x67:        // "cpia"
        tmp0 = cpu_state.imem[IRAM_REG_A] - read_mem(cpu_state.pc + 1);
        cpu_state.pc += 2;
        cpu_state.cycles += 4;
        break;
    case 0xc7:        // "cpma"
        tmp0 = cpu_state.imem[cpu_state.p] - cpu_state.imem[IRAM_REG_A];
        cpu_state.pc += 1;
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }

    cpu_state.flags.carry = (tmp0 & 0x0100) >> 8;
    cpu_state.flags.zero = tmp0 == 0;
}

void sim_data(void)
{
    // (BA)...(BA+1)->(P)...(P+1)
    cpu_state.d = cpu_state.imem[IRAM_REG_I];
    cpu_state.cycles += 11 + 4 * cpu_state.d;
    uint16_t src = (cpu_state.imem[IRAM_REG_B] << 8);
    src |= cpu_state.imem[IRAM_REG_A];
    do
    {
        cpu_state.imem[cpu_state.p] = read_mem(src);
        cpu_state.p += 1;
        cpu_state.p &= 0x7F;
        src += 1;
        cpu_state.d -= 1;
    }
    while (cpu_state.d != 0xff);
    cpu_state.pc += 1;
}

void sim_default(void)
{
}

void sim_exa(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint8_t tmp;
    switch (instruction)
    {
    case 0xda:        // "exab"
        tmp = cpu_state.imem[IRAM_REG_B];
        cpu_state.imem[IRAM_REG_B] = cpu_state.imem[IRAM_REG_A];
        cpu_state.imem[IRAM_REG_A] = tmp;
        cpu_state.cycles += 5;
        break;
    case 0xdb:        // "exam"
        tmp = cpu_state.imem[IRAM_REG_A];
        cpu_state.imem[IRAM_REG_A] = cpu_state.imem[cpu_state.p];
        cpu_state.imem[cpu_state.p] = tmp;
        cpu_state.cycles += 3;
        break;
    }
    cpu_state.pc += 1;
}

void sim_fil(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x1e:      // "film"  A -> (P)..(P+I)
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        fprintf(fp_memaccess, "film - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + cpu_state.d;
        do
        {
            cpu_state.imem[cpu_state.p] = cpu_state.imem[IRAM_REG_A];
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x1f:      // "fild"  A -> (DP)..(DP+I)
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        fprintf(fp_memaccess, "fild - %d\r\n", cpu_state.d);
        cpu_state.cycles += 4 + 3 * cpu_state.d;
        do
        {
            write_mem(cpu_state.dp, cpu_state.imem[IRAM_REG_A]);
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

static void reg_incdec(unsigned int reg_num, int addsub)
{
    int16_t tmp = cpu_state.imem[reg_num] + addsub;
    cpu_state.imem[reg_num] = tmp;
    cpu_state.q = reg_num;
    cpu_state.flags.carry = (tmp & 0x0100) >> 8;
    cpu_state.flags.zero = (cpu_state.imem[reg_num] == 0);
    cpu_state.cycles += 2;
}

void sim_incdec(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x40:          // "inci"
        reg_incdec(IRAM_REG_I, 1);
        break;
    case 0x41:          // "deci"
        reg_incdec(IRAM_REG_I, -1);
        break;
    case 0x42:          // "inca"
        reg_incdec(IRAM_REG_A, 1);
        break;
    case 0x43:          // "deca"
        reg_incdec(IRAM_REG_A, -1);
        break;
    case 0x48:          // "inck"
        reg_incdec(IRAM_REG_K, 1);
        break;
    case 0x49:          // "deck"
        reg_incdec(IRAM_REG_K, -1);
        break;
    case 0x4a:          // "incm"
        reg_incdec(IRAM_REG_M, 1);
        break;
    case 0x4b:          // "decm"
        reg_incdec(IRAM_REG_M, -1);
        break;
    case 0x50:          // "incp"
        cpu_state.p += 1;
        cpu_state.p &= 0x7F;
        break;
    case 0x51:          // "decp"
        cpu_state.p -= 1;
        cpu_state.p &= 0x7F;
        break;
    case 0xc0:          // "incj"
        reg_incdec(IRAM_REG_J, 1);
        break;
    case 0xc1:          // "decj"
        reg_incdec(IRAM_REG_J, -1);
        break;
    case 0xc2:          // "incb"
        reg_incdec(IRAM_REG_B, 1);
        break;
    case 0xc3:          // "decb"
        reg_incdec(IRAM_REG_B, -1);
        break;
    case 0xc8:          // "incl"
        reg_incdec(IRAM_REG_L, 1);
        break;
    case 0xc9:          // "decl"
        reg_incdec(IRAM_REG_L, -1);
        break;
    case 0xca:          // "incn"
        reg_incdec(IRAM_REG_N, 1);
        break;
    case 0xcb:          // "decn"
        reg_incdec(IRAM_REG_N, -1);
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.cycles += 2;
    cpu_state.pc += 1;
}

void sim_io(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x4c:      // "ina"
        cpu_state.imem[IRAM_REG_A] = pt.ina();
        cpu_state.flags.zero = (cpu_state.imem[IRAM_REG_A] == 0);
        cpu_state.cycles += 2;
        break;
    case 0x5d:      // "outa"
        pt.outa();
        cpu_state.cycles += 3;
        break;
    case 0x5f:      // "outf"
        pt.outf();
        cpu_state.cycles += 3;
        break;
    case 0xcc:      // "inb"
        cpu_state.imem[IRAM_REG_A] = pt.inb();
        cpu_state.flags.zero = (cpu_state.imem[IRAM_REG_A] == 0);
        cpu_state.cycles += 2;
        break;
    case 0xdd:      // "outb"
        pt.outb();
        cpu_state.cycles += 2;
        break;
    case 0xdf:      // "outc"
        pt.outc();
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_jr(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    cpu_state.pc += 1;
    uint16_t next_pc = cpu_state.pc + 1;
    switch (instruction)
    {
    case 0x28:      // "jrnzp"
        if (cpu_state.flags.zero == 0)
        {
            next_pc = cpu_state.pc + read_mem(cpu_state.pc);
            cpu_state.cycles += 3;
        }
        break;
    case 0x29:      // "jrnzm"
        if (cpu_state.flags.zero == 0)
        {
            next_pc = cpu_state.pc - read_mem(cpu_state.pc);
            cpu_state.cycles += 3;
        }
        break;
    case 0x2a:      // "jrncp"
        if (cpu_state.flags.carry == 0)
        {
            next_pc = cpu_state.pc + read_mem(cpu_state.pc);
            cpu_state.cycles += 3;
        }
        break;
    case 0x2b:      // "jrncm"
        if (cpu_state.flags.carry == 0)
        {
            next_pc = cpu_state.pc - read_mem(cpu_state.pc);
            cpu_state.cycles += 3;
        }
        break;
    case 0x38:      // "jrzp"
        if (cpu_state.flags.zero == 1)
        {
            next_pc = cpu_state.pc + read_mem(cpu_state.pc);
            cpu_state.cycles += 3;
        }
        break;
    case 0x39:      // "jrzm"
        if (cpu_state.flags.zero == 1)
        {
            next_pc = cpu_state.pc - read_mem(cpu_state.pc);
            cpu_state.cycles += 3;
        }
        break;
    case 0x3a:      // "jrcp"
        if (cpu_state.flags.carry != 0)
        {
            next_pc = cpu_state.pc + read_mem(cpu_state.pc);
            cpu_state.cycles += 3;
        }
        break;
    case 0x3b:      // "jrcm"
        if (cpu_state.flags.carry != 0)
        {
            next_pc = cpu_state.pc - read_mem(cpu_state.pc);
            cpu_state.cycles += 3;
        }
        break;
    case 0x2c:      // "jrp"
        next_pc = cpu_state.pc + read_mem(cpu_state.pc);
        cpu_state.cycles += 3;
        break;
    case 0x2d:      // "jrm"
        next_pc = cpu_state.pc - read_mem(cpu_state.pc);
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc = next_pc;
    cpu_state.cycles += 4;
}

void sim_jp(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x79:          // "jp"
        cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        break;
    case 0x7c:          // "jpnz"
        if (cpu_state.flags.zero == 0)
            cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        else
            cpu_state.pc += 3;
        break;
    case 0x7d:          // "jpnc"
        if (cpu_state.flags.carry == 0)
            cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        else
            cpu_state.pc += 3;
        break;
    case 0x7e:          // "jpz"
        if (cpu_state.flags.zero != 0)
            cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        else
            cpu_state.pc += 3;
        break;
    case 0x7f:          // "jpc"
        if (cpu_state.flags.carry != 0)
            cpu_state.pc = (read_mem(cpu_state.pc + 1) << 8) +
                                                     read_mem(cpu_state.pc + 2);
        else
            cpu_state.pc += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.cycles += 6;
}

void sim_lr(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x00:      // "lii"
        cpu_state.pc += 1;
        cpu_state.imem[IRAM_REG_I] = read_mem(cpu_state.pc);
        cpu_state.cycles += 4;
        break;
    case 0x01:      // "lij"
        cpu_state.pc += 1;
        cpu_state.imem[IRAM_REG_J] = read_mem(cpu_state.pc);
        cpu_state.cycles += 4;
        break;
    case 0x02:      // "lia"
        cpu_state.pc += 1;
        cpu_state.imem[IRAM_REG_A] = read_mem(cpu_state.pc);
        cpu_state.cycles += 4;
        break;
    case 0x03:      // "lib"
        cpu_state.pc += 1;
        cpu_state.imem[IRAM_REG_B] = read_mem(cpu_state.pc);
        cpu_state.cycles += 4;
        break;
    case 0x10:      // "lidp"
        cpu_state.pc += 1;
        cpu_state.dp = read_mem(cpu_state.pc) << 8;
        cpu_state.pc += 1;
        cpu_state.dp |= read_mem(cpu_state.pc);
        cpu_state.cycles += 8;
        break;
    case 0x11:      // "lidl"
        cpu_state.pc += 1;
        cpu_state.dp &= 0xFF00;
        cpu_state.dp |= read_mem(cpu_state.pc);
        cpu_state.cycles += 5;
        break;
    case 0x12:      // "lip"
        cpu_state.pc += 1;
        cpu_state.p = read_mem(cpu_state.pc) & 0x7F;
        cpu_state.cycles += 4;
        break;
    case 0x13:      // "liq"
        cpu_state.pc += 1;
        cpu_state.q = read_mem(cpu_state.pc) & 0x7F;
        cpu_state.cycles += 4;
        break;
    case 0x20:      // "ldp"
        cpu_state.imem[IRAM_REG_A] = cpu_state.p;
        cpu_state.cycles += 2;
        break;
    case 0x21:      // "ldq"
        cpu_state.imem[IRAM_REG_A] = cpu_state.q;
        cpu_state.cycles += 2;
        break;
    case 0x22:      // "ldr"
        cpu_state.imem[IRAM_REG_A] = cpu_state.r;
        cpu_state.cycles += 2;
        break;
    case 0x23:      // "clra"
        // This instruction does not exist in the SC61860 machine language
        //  manual and is never used in the disassembly of the ROM.
        cpu_state.imem[IRAM_REG_A] = 0;
        cpu_state.cycles += 4;
        break;
    case 0x54:      // "readm"
        // This instruction does not exist in the SC61860 machine language
        //  manual and is never used in the disassembly of the ROM.
        g_print("Untested instruction: READM\r\n");
        cpu_state.pc += 1;
        cpu_state.imem[cpu_state.p] = read_mem(cpu_state.pc);
        cpu_state.cycles += 3;
        break;
    case 0x56:      // "read"
        // This instruction does not exist in the SC61860 machine language
        //  manual and is never used in the disassembly of the ROM.
        g_print("Untested instruction: READ\r\n");
        cpu_state.pc += 1;
        cpu_state.imem[IRAM_REG_A] = read_mem(cpu_state.pc);
        cpu_state.cycles += 3;
        break;
    case 0x57:      // "ldd"
        cpu_state.imem[IRAM_REG_A] = read_mem(cpu_state.dp);
        cpu_state.cycles += 3;
        break;
    case 0x58:      // "swp"
        cpu_state.imem[IRAM_REG_A] = (cpu_state.imem[IRAM_REG_A] << 4) |
                                     (cpu_state.imem[IRAM_REG_A] >> 4);
        cpu_state.cycles += 2;
        break;
    case 0x59:      // "ldm"
        cpu_state.imem[IRAM_REG_A] = cpu_state.imem[cpu_state.p];
        cpu_state.cycles += 2;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_loop(void)
{
    g_print("Untested instruction: LOOP\r\n");
    cpu_state.imem[cpu_state.r] -= 1;
    cpu_state.flags.carry = (cpu_state.imem[cpu_state.r] == 0xFF);
    cpu_state.pc += 1;
    if (cpu_state.flags.carry == 0)
    {
        cpu_state.pc -= read_mem(cpu_state.pc) - 1;
        cpu_state.cycles += 10;
    }
    else
    {
        cpu_state.r += 1;
        cpu_state.pc += 1;
        cpu_state.cycles += 7;
    }
}

void sim_leave(void)
{
    g_print("Untested instruction: LEAVE\r\n");
    cpu_state.imem[cpu_state.r] = 0;
    cpu_state.pc += 1;
    cpu_state.cycles += 2;
}

void sim_lp(void)
{
    cpu_state.p = read_mem(cpu_state.pc) & 0x3f;
    cpu_state.pc += 1;
    cpu_state.cycles += 2;
}

void sim_mv(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x08:      // "mvw"
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        fprintf(fp_memaccess, "mvw - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + 2 * cpu_state.d;
        do
        {
            cpu_state.imem[cpu_state.p] = cpu_state.imem[cpu_state.q];
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.q += 1;
            cpu_state.q &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x09:      // "exw"
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        fprintf(fp_memaccess, "exw - %d\r\n", cpu_state.d);
        cpu_state.cycles += 6 + 3 * cpu_state.d;
        do
        {
            uint8_t tmp = cpu_state.imem[cpu_state.p];
            cpu_state.imem[cpu_state.p] = cpu_state.imem[cpu_state.q];
            cpu_state.imem[cpu_state.q] = tmp;
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.q += 1;
            cpu_state.q &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x0a:      // "mvb"
        cpu_state.d = cpu_state.imem[IRAM_REG_J];
        fprintf(fp_memaccess, "mvb - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + 2 * cpu_state.d;
        do
        {
            cpu_state.imem[cpu_state.p] = cpu_state.imem[cpu_state.q];
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.q += 1;
            cpu_state.q &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x0b:      // "exb"  (P)..(P+J)<->(Q)..(Q+J),
        cpu_state.d = cpu_state.imem[IRAM_REG_J];
        fprintf(fp_memaccess, "exb - %d\r\n", cpu_state.d);
        cpu_state.cycles += 6 + 3 * cpu_state.d;
        do
        {
            uint8_t tmp = cpu_state.imem[cpu_state.p];
            cpu_state.imem[cpu_state.p] = cpu_state.imem[cpu_state.q];
            cpu_state.imem[cpu_state.q] = tmp;
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.q += 1;
            cpu_state.q &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x18:      // "mvwd"
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        fprintf(fp_memaccess, "mvwd - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + 4 * cpu_state.d;
        do
        {
            cpu_state.imem[cpu_state.p] = read_mem(cpu_state.dp);
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x19:      // "exwd"
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        fprintf(fp_memaccess, "exwd - %d\r\n", cpu_state.d);
        cpu_state.cycles += 7 + 6 * cpu_state.d;
        do
        {
            uint8_t tmp = cpu_state.imem[cpu_state.p];
            cpu_state.imem[cpu_state.p] = read_mem(cpu_state.dp);
            write_mem(cpu_state.dp, tmp);
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x1a:      // "mvbd"  (DP)..(DP+J)->(P)..(P+J)
        cpu_state.d = cpu_state.imem[IRAM_REG_J];
        fprintf(fp_memaccess, "mvbd - %d\r\n", cpu_state.d);
        cpu_state.cycles += 5 + 4 * cpu_state.d;
        do
        {
            cpu_state.imem[cpu_state.p] = read_mem(cpu_state.dp);
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x1b:      // "exbd"  (P)..(P+J)<->(DP)..(DP+J)
        cpu_state.d = cpu_state.imem[IRAM_REG_J];
        fprintf(fp_memaccess, "exbd - %d\r\n", cpu_state.d);
        cpu_state.cycles += 7 + 6 * cpu_state.d;
        do
        {
            uint8_t tmp = cpu_state.imem[cpu_state.p];
            cpu_state.imem[cpu_state.p] = read_mem(cpu_state.dp);
            write_mem(cpu_state.dp, tmp);
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.dp += 1;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x53:      // "mvdm"
        write_mem(cpu_state.dp, cpu_state.imem[cpu_state.p]);
        cpu_state.cycles += 3;
        break;
    case 0x55:      // "mvmd"
        cpu_state.imem[cpu_state.p] = read_mem(cpu_state.dp);
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_nop(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x4d:          // "nopw"
        cpu_state.cycles += 2;
        break;
    case 0xce:          // "nopt"
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_rtn(void)
{
    cpu_state.pc = cpu_state.imem[cpu_state.r + 1] << 8;
    cpu_state.pc |= cpu_state.imem[cpu_state.r];
    cpu_state.r += 2;
    cpu_state.cycles += 4;
}

void sim_shift(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t tmp;
    switch (instruction)
    {
    case 0x1c:          // "srw"
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        cpu_state.cycles += 5 + cpu_state.d;
        tmp = 0;
        do
        {
            tmp = (tmp << 8) | cpu_state.imem[cpu_state.p];
            cpu_state.imem[cpu_state.p] = tmp >> 4;
            cpu_state.p += 1;
            cpu_state.p &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x1d:          // "slw"
        cpu_state.d = cpu_state.imem[IRAM_REG_I];
        cpu_state.cycles += 5 + cpu_state.d;
        tmp = 0;
        do
        {
            tmp = (tmp >> 8) | (cpu_state.imem[cpu_state.p] << 8);
            cpu_state.imem[cpu_state.p] = tmp >> 4;
            cpu_state.p -= 1;
            cpu_state.p &= 0x7F;
            cpu_state.d -= 1;
        }
        while (cpu_state.d != 0xff);
        break;
    case 0x5a:          // "sl"
        tmp = cpu_state.flags.carry;
        cpu_state.flags.carry = cpu_state.imem[IRAM_REG_A] >> 7;
        cpu_state.imem[IRAM_REG_A] = (cpu_state.imem[IRAM_REG_A] << 1) | tmp;
        cpu_state.cycles += 2;
        break;
    case 0xd2:          // "sr"
        tmp = cpu_state.flags.carry << 7;
        cpu_state.flags.carry = cpu_state.imem[IRAM_REG_A] & 0x01;
        cpu_state.imem[IRAM_REG_A] = (cpu_state.imem[IRAM_REG_A] >> 1) | tmp;
        cpu_state.cycles += 2;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_stack(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x34:          // "push"
        cpu_state.r -= 1;
        cpu_state.r &= 0x7F;
        cpu_state.imem[cpu_state.r] = cpu_state.imem[IRAM_REG_A];
        cpu_state.cycles += 3;
        break;
    case 0x5b:          // "pop"
        cpu_state.imem[IRAM_REG_A] = cpu_state.imem[cpu_state.r];
        cpu_state.r += 1;
        cpu_state.r &= 0x7F;
        cpu_state.cycles += 2;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

void sim_store(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x30:          // "stp"
        cpu_state.p = cpu_state.imem[IRAM_REG_A] & 0x7F;
        break;
    case 0x31:          // "stq"
        cpu_state.q = cpu_state.imem[IRAM_REG_A] & 0x7F;
        break;
    case 0x32:          // "str"
        cpu_state.r = cpu_state.imem[IRAM_REG_A] & 0x7F;
        break;
    case 0x52:          // "std"
        write_mem(cpu_state.dp, cpu_state.imem[IRAM_REG_A]);
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
    cpu_state.cycles += 2;
}

void sim_table(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    uint16_t pc;
    switch (instruction)
    {
    case 0x69:          // "ptj"
        cpu_state.pc += 1;
        int i;
        for (i = 0; i < cpu_state.table_items; i++)
        {
            if (cpu_state.imem[IRAM_REG_A] == read_mem(cpu_state.pc))
            {
                // We have found a match.
                pc = read_mem(cpu_state.pc + 1) << 8;
                pc |= read_mem(cpu_state.pc + 2);
                cpu_state.pc = pc;
                cpu_state.cycles += 2;        // TODO: Check this value.
                return;
            }
            cpu_state.pc += 3;
        }

        if (i == cpu_state.table_items)
        {
            // We did not find a match. Call the default handler.
            pc = read_mem(cpu_state.pc) << 8;
            pc |= read_mem(cpu_state.pc + 1);
            cpu_state.pc = pc;
            cpu_state.cycles += 2;        // TODO: Check this value.
        }
        return;
    case 0x7A:          // "dtj"
        cpu_state.pc += 1;
        cpu_state.table_items = read_mem(cpu_state.pc);

        // We'll put the return address in the stack right away.
        cpu_state.r -= 2;
        cpu_state.imem[cpu_state.r + 1] = read_mem(cpu_state.pc + 1);
        cpu_state.imem[cpu_state.r] = read_mem(cpu_state.pc + 2);
        cpu_state.pc += 3;
        cpu_state.cycles += 3;
        break;
    default:
        sim_not_implemented();
        break;
    }
}

void sim_test(void)
{
// bit  Name    meaning
//  0    CT1    True if 512ms spent since the last counter reset.
//  1    CT2    True if 2ms spent since the last counter reset.
//  2
//  3    Kon    True if [BRK] key is pressed.
//  4
//  5
//  6    RST    True if we are reseting (False in case of powerup, else True in
//               case of reset)
//  7    Xin    Value of Xin
    uint8_t test =  (cpu_state.test.xin << 7) +
                    (cpu_state.test.rst << 6) +
                    (cpu_state.test.kon << 3) +
                    (cpu_state.test.ct2 << 1) +
                     cpu_state.test.ct1;
    test &= read_mem(cpu_state.pc + 1);
    cpu_state.flags.zero = (test == 0);
    cpu_state.cycles += 4;
    cpu_state.pc += 2;
}

void sim_wait(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x4e:      // "wait"
        cpu_state.pc += 1;
        cpu_state.cycles += 6 + read_mem(cpu_state.pc);
        break;
    case 0x4f:      // "waiti"
        cpu_state.cycles += 5 + 4 * cpu_state.imem[IRAM_REG_I];
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

static void reg_xy(int reg1, int reg2, int addsub)
{
    cpu_state.dp = ((cpu_state.imem[reg1] << 8) +
                                                cpu_state.imem[reg2]) + addsub;
    cpu_state.imem[reg1] = cpu_state.dp >> 8;
    cpu_state.imem[reg2] = cpu_state.dp;
    cpu_state.q = reg1;
    cpu_state.cycles += 6;
}

void sim_xy(void)
{
    uint8_t instruction = read_mem(cpu_state.pc);
    switch (instruction)
    {
    case 0x04:      // "ix"
        reg_xy(IRAM_REG_XH, IRAM_REG_XL, 1);
        break;
    case 0x05:      // "dx"
        reg_xy(IRAM_REG_XH, IRAM_REG_XL, -1);
        break;
    case 0x06:      // "iy"
        reg_xy(IRAM_REG_YH, IRAM_REG_YL, 1);
        break;
    case 0x07:      // "dy"
        reg_xy(IRAM_REG_YH, IRAM_REG_YL, -1);
        break;
    case 0x24:      // "ixl"
        reg_xy(IRAM_REG_XH, IRAM_REG_XL, 1);
        cpu_state.imem[IRAM_REG_A] = read_mem(cpu_state.dp);
        cpu_state.cycles += 1;
        break;
    case 0x25:      // "dxl"
        reg_xy(IRAM_REG_XH, IRAM_REG_XL, -1);
        cpu_state.imem[IRAM_REG_A] = read_mem(cpu_state.dp);
        cpu_state.cycles += 1;
        break;
    case 0x26:      // "iys"
        reg_xy(IRAM_REG_YH, IRAM_REG_YL, 1);
        write_mem(cpu_state.dp, cpu_state.imem[IRAM_REG_A]);
        cpu_state.cycles += 1;
        break;
    case 0x27:      // "dys"
        reg_xy(IRAM_REG_YH, IRAM_REG_YL, -1);
        write_mem(cpu_state.dp, cpu_state.imem[IRAM_REG_A]);
        cpu_state.cycles += 1;
        break;
    default:
        sim_not_implemented();
        break;
    }
    cpu_state.pc += 1;
}

const sc61860_instr_t sc61860_instr[] =
{
    {SC61860_FORMAT_CASE + (0x3 << 8) + 3, 0xFF, 0x16, ".case", sim_case},
    {SC61860_FORMAT_DEFAULT + (0x3 << 8) + 2, 0xFF, 0x17, ".default", sim_default},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x00, "lii", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x01, "lij", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x02, "lia", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x03, "lib", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x04, "ix", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x05, "dx", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x06, "iy", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (6 << 8) + 1,   0xFF, 0x07, "dy", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (0x25 << 8) + 1, 0xFF, 0x08, "mvw", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x09, "exw", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x25 << 8) + 1, 0xFF, 0x0A, "mvb", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0b, "exb", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0c, "adn", sim_bcd},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0d, "sbn", sim_bcd},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0e, "adw", sim_bcd},
    {SC61860_FORMAT_NOOPERAND + (0x36 << 8) + 1, 0xFF, 0x0f, "sbw", sim_bcd},
    {SC61860_FORMAT_IMMEDIATE16 + (8 << 8) + 3, 0xFF, 0x10, "lidp", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (5 << 8) + 2, 0xFF, 0x11, "lidl", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x12, "lip", sim_lr},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x13, "liq", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (0x5 << 8) + 1, 0xFF, 0x14, "adb", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (0x5 << 8) + 1, 0xFF, 0x15, "sbb", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (0x45 << 8) + 1, 0xFF, 0x18, "mvwd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x67 << 8) + 1, 0xFF, 0x19, "exwd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x45 << 8) + 1, 0xFF, 0x1a, "mvbd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x67 << 8) + 1, 0xFF, 0x1b, "exbd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (0x15 << 8) + 1, 0xFF, 0x1c, "srw", sim_shift},
    {SC61860_FORMAT_NOOPERAND + (0x15 << 8) + 1, 0xFF, 0x1d, "slw", sim_shift},
    {SC61860_FORMAT_NOOPERAND + (0x15 << 8) + 1, 0xFF, 0x1e, "film", sim_fil},
    {SC61860_FORMAT_NOOPERAND + (0x34 << 8) + 1, 0xFF, 0x1f, "fild", sim_fil},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x20, "ldp", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x21, "ldq", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x22, "ldr", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x23, "ra", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x24, "ixl", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x25, "dxl", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x26, "iys", sim_xy},
    {SC61860_FORMAT_NOOPERAND + (7 << 8) + 1, 0xFF, 0x27, "dys", sim_xy},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x28, "jrnzp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x29, "jrnzm", sim_jr},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x2a, "jrncp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x2b, "jrncm", sim_jr},
    {SC61860_FORMAT_RELATIVE_PLUS + (7 << 8) + 2, 0xFF, 0x2c, "jrp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (7 << 8) + 2, 0xFF, 0x2d, "jrm", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x7a << 8) + 2, 0xFF, 0x2f, "loop", sim_loop},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x30, "stp", sim_store},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x31, "stq", sim_store},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x32, "str", sim_store},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x34, "push", sim_stack},
    {SC61860_FORMAT_NOOPERAND + (0x4b << 8) + 1, 0xFF, 0x35, "data", sim_data},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x37, "rtn", sim_rtn},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x38, "jrzp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x39, "jrzm", sim_jr},
    {SC61860_FORMAT_RELATIVE_PLUS + (0x47 << 8) + 2, 0xFF, 0x3a, "jrcp", sim_jr},
    {SC61860_FORMAT_RELATIVE_MINUS + (0x47 << 8) + 2, 0xFF, 0x3b, "jrcm", sim_jr},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x40, "inci", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x41, "deci", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x42, "inca", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x43, "deca", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x44, "adm", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x45, "sbm", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x46, "anma", sim_bool},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x47, "orma", sim_bool},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x48, "inck", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x49, "deck", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x4a, "incm", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0x4b, "decm", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x4c, "ina", sim_io},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x4d, "nopw", sim_nop},
    {SC61860_FORMAT_IMMEDIATE8 + (0xF4 << 8) + 2, 0xFF, 0x4e, "wait", sim_wait},
    {SC61860_FORMAT_NOOPERAND + (0x45 << 8) + 1, 0xFF, 0x4f, "waiti", sim_wait},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x50, "incp", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x51, "decp", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x52, "std", sim_store},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x53, "mvdm", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x54, "readm", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x55, "mvmd", sim_mv},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x56, "read", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x57, "ldd", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x58, "swp", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x59, "ldm", sim_lr},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x5a, "sl", sim_shift},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0x5b, "pop", sim_stack},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x5d, "outa", sim_io},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0x5f, "outf", sim_io},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x60, "anim", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x61, "orim", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x62, "tsim", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x63, "cpim", sim_cp},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x64, "ania", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x65, "oria", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x66, "tsia", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x67, "cpia", sim_cp},
    {SC61860_FORMAT_PTJ + (9 << 8) + 1, 0xFF, 0x69, "dtj", sim_table},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x6b, "test", sim_test},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x70, "adim", sim_arith},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x71, "sbim", sim_arith},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x74, "adia", sim_arith},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x75, "sbia", sim_arith},
    {SC61860_FORMAT_ADDRESS16 + (8 << 8) + 3, 0xFF, 0x78, "call", sim_cal},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x79, "jp", sim_jp},
    {SC61860_FORMAT_DTJ + (0 << 8) + 4, 0xFF, 0x7A, "ptj", sim_table},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7c, "jpnz", sim_jp},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7d, "jpnc", sim_jp},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7e, "jpz", sim_jp},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x7f, "jpc", sim_jp},
    {SC61860_FORMAT_IMMEDIATE6 + (1 << 8) + 1, 0xC0, 0x80, "lp", sim_lp},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc0, "incj", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc1, "decj", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc2, "incb", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc3, "decb", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc4, "adcm", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc5, "sbcm", sim_arith},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc6, "tsma", sim_bool},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xc7, "cpma", sim_cp},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc8, "incl", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xc9, "decl", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xca, "incn", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (4 << 8) + 1, 0xFF, 0xcb, "decn", sim_incdec},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xcc, "inb", sim_io},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xce, "nopt", sim_nop},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd0, "sc", sim_carry},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd1, "rc", sim_carry},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd2, "sr", sim_shift},
    {SC61860_FORMAT_IMMEDIATE8 + (6 << 8) + 2, 0xFF, 0xd4, "anid", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (6 << 8) + 2, 0xFF, 0xd5, "orid", sim_bool},
    {SC61860_FORMAT_IMMEDIATE8 + (6 << 8) + 2, 0xFF, 0xd6, "tsid", sim_bool},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xd8, "leave", sim_leave},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xda, "exab", sim_exa},
    {SC61860_FORMAT_NOOPERAND + (3 << 8) + 1, 0xFF, 0xdb, "exam", sim_exa},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xdd, "outb", sim_io},
    {SC61860_FORMAT_NOOPERAND + (2 << 8) + 1, 0xFF, 0xdf, "outc", sim_io},
    {SC61860_FORMAT_ADDRESS13 + (7 << 8) + 2, 0xe0, 0xe0, "cal", sim_cal},
    {SC61860_FORMAT_TERM, 0, 0, "", sim_not_implemented},
};

static void print_shift(GString *p, int32_t len)
{
    while (p->len < len)
        g_string_append_c(p, ' ');
    g_string_append_c(p, ' ');
}

static size_t print_instruction(uint16_t address,
                                uint8_t instruction,
                                uint32_t index,
                                GString *p)
{
    uint8_t operand0, operand1;
    uint16_t target_address;

    int32_t imm;
    switch (sc61860_instr[index].attributes & 0xFF000000)
    {
    case SC61860_FORMAT_IMMEDIATE8:
        operand0 = pt.read_memory(address + 1);
        g_string_append_printf(p,
                               "%02X %02X       %s",
                               instruction,
                               operand0,
                               sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        g_string_append_printf(p, "%02X", operand0);
        if ((instruction == 0x12) || (instruction == 0x13))
        {
            if (operand0 < sizeof(regs_to_str) / sizeof(char *))
            {
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; %s", regs_to_str[operand0]);
            }
            else
            {
                switch (operand0)
                {
                case 0x20:
                    print_shift(p, COMMENT_COLUMN);
                    g_string_append_printf(p, "; BCD[20:27]");
                    break;
                case 0x28:
                    print_shift(p, COMMENT_COLUMN);
                    g_string_append_printf(p, "; BCD[28:2F]");
                    break;
                case 0x30:
                    print_shift(p, COMMENT_COLUMN);
                    g_string_append_printf(p, "; BCD[30:37]");
                    break;
                case 0x38:
                    print_shift(p, COMMENT_COLUMN);
                    g_string_append_printf(p, "; BCD[38:3F]");
                    break;
                case 0x5C:
                    print_shift(p, COMMENT_COLUMN);
                    g_string_append_printf(p, "; PortA");
                    break;
                case 0x5D:
                    print_shift(p, COMMENT_COLUMN);
                    g_string_append_printf(p, "; PortB");
                    break;
                case 0x5E:
                    print_shift(p, COMMENT_COLUMN);
                    g_string_append_printf(p, "; PortF");
                    break;
                case 0x5F:
                    print_shift(p, COMMENT_COLUMN);
                    g_string_append_printf(p, "; PortC");
                    break;
                default:
                    break;
                }
            }
        }
        if ((instruction == 0x6b) || (instruction == 0x13))
        {
            switch (operand0)
            {
            case 0x01:
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; 0.5 s counter");
                break;
            case 0x02:
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; 2 s counter");
                break;
            case 0x08:
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; Kon status");
                break;
            case 0x40:
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; RST");
                break;
            case 0x80:
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; Xin Status");
                break;
            default:
                break;
            }
        }
        break;
    case SC61860_FORMAT_NOOPERAND:
        g_string_append_printf(p,
                               "%02X          %s",
                               instruction,
                               sc61860_instr[index].opcode);
        break;
    case SC61860_FORMAT_IMMEDIATE16:
    case SC61860_FORMAT_ADDRESS16:
        operand0 = pt.read_memory(address + 1);
        operand1 = pt.read_memory(address + 2);
        g_string_append_printf(p,
                               "%02X %02X %02X    %s",
                               instruction,
                               operand0,
                               operand1,
                               sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        g_string_append_printf(p, "$%04X", operand0 * 256 + operand1);
        break;
    case SC61860_FORMAT_IMMEDIATE6:
        operand0 = instruction & 0x3F;
        g_string_append_printf(p,
                               "%02X          %s",
                               instruction,
                               sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        g_string_append_printf(p, "%02X", operand0);
        if (operand0 < sizeof(regs_to_str) / sizeof(char *))
        {
            print_shift(p, COMMENT_COLUMN);
            g_string_append_printf(p, "; %s", regs_to_str[operand0]);
        }
        else
        {
            switch (operand0)
            {
            case 0x20:
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; BCD[20:27]");
                break;
            case 0x28:
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; BCD[28:2F]");
                break;
            case 0x30:
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; BCD[30:37]");
                break;
            case 0x38:
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p, "; BCD[38:3F]");
                break;
            default:
                break;
            }
        }
        break;
    case SC61860_FORMAT_ADDRESS13:
        operand0 = instruction & 0x1F;
        operand1 = pt.read_memory(address + 1);
        g_string_append_printf(p,
                               "%02X %02X       %s",
                               instruction,
                               operand1,
                               sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        target_address = operand0 * 256 + operand1;
        g_string_append_printf(p, "%04X", target_address);

        // Search the address descriptors to see if we can match this address
        //  to one of the well known ones.
        imm = 0;
        while (address_descriptors[imm].label != 0)
        {
            if (target_address == address_descriptors[imm].address)
            {
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p,
                                       "; %s",
                                       address_descriptors[imm].label);
                break;
            }
            imm++;
        }
        break;
    case SC61860_FORMAT_RELATIVE_PLUS:
        operand0 = pt.read_memory(address + 1);
        g_string_append_printf(p,
                               "%02X %02X       %s",
                               instruction,
                               operand0,
                               sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        target_address = address + operand0 + 1;
        g_string_append_printf(p, "%04X", target_address);

        // Search the address descriptors to see if we can match this address
        //  to one of the well known ones.
        imm = 0;
        while (address_descriptors[imm].label != 0)
        {
            if (target_address == address_descriptors[imm].address)
            {
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p,
                                       "; %s",
                                       address_descriptors[imm].label);
                break;
            }
            imm++;
        }
        break;
    case SC61860_FORMAT_RELATIVE_MINUS:
        operand0 = pt.read_memory(address + 1);
        g_string_append_printf(p,
                               "%02X %02X       %s",
                               instruction,
                               operand0,
                               sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        target_address = address - operand0 + 1;
        g_string_append_printf(p, "%04X", target_address);

        // Search the address descriptors to see if we can match this address
        //  to one of the well known ones.
        imm = 0;
        while (address_descriptors[imm].label != 0)
        {
            if (target_address == address_descriptors[imm].address)
            {
                print_shift(p, COMMENT_COLUMN);
                g_string_append_printf(p,
                                       "; %s",
                                       address_descriptors[imm].label);
                break;
            }
            imm++;
        }
        break;
    case SC61860_FORMAT_PTJ:
        g_string_append_printf(p, "%02X          ptj", instruction);
        cpu_state.current_item = cpu_state.table_items;
        break;
    case SC61860_FORMAT_DTJ:
        g_string_append_printf(p, "%02X          dtj", instruction);
        print_shift(p, OPERAND_COLUMN);
        operand0 = pt.read_memory(address + 1);
        int addr = (pt.read_memory(address + 2) << 8) |
                                               pt.read_memory(address + 3);
        g_string_append_printf(p, "%02X, %04X", operand0, addr);
        cpu_state.table_items = pt.read_memory(address + 1);
        break;
    case SC61860_FORMAT_CASE:
        g_string_append_printf(p,
                               "%02X %02X %02X    .case",
                               pt.read_memory(address),
                               pt.read_memory(address + 1),
                               pt.read_memory(address + 2));
        print_shift(p, OPERAND_COLUMN);
        g_string_append_printf(p,
                               "%02X, %04X",
                               pt.read_memory(address),
                               pt.read_memory(address + 1) * 256 +
                                                   pt.read_memory(address + 2));
        break;
    case SC61860_FORMAT_DEFAULT:
        g_string_append_printf(p,
                               "%02X %02X        .default",
                               pt.read_memory(address),
                               pt.read_memory(address + 1));
        print_shift(p, OPERAND_COLUMN);
        g_string_append_printf(p,
                               "%04X",
                               pt.read_memory(address) * 256 +
                                                   pt.read_memory(address + 1));
        break;
    default:
        break;
    }
    return sc61860_instr[index].attributes & 0xFF;
}

uint32_t print_asm_line(uint16_t address, uint8_t instruction, GString *p)
{
    g_assert(p != NULL);
    g_string_append_printf(p, "%04X: ", address);
    uint32_t i = 0;
    while (sc61860_instr[i].attributes != 0)
    {
        if (((instruction & sc61860_instr[i].mask) ==
                                      sc61860_instr[i].mask_value) && (p != 0))
            // If the string pointer is null we are going to return only
            //  the number of bytes of the instruciton.
            return print_instruction(address, instruction, i, p);
        i++;
    }
    // Unrecognized instruction.
    g_string_append_printf(p, "%04X: %02X    ???", address, instruction);
    return 1;
}

uint32_t sc61860_disassembler(uint16_t address,
                              uint8_t instruction,
                              GString *p)
{
    if (cpu_state.current_item > 0)
    {
        cpu_state.current_item -= 1;
        return print_asm_line(address, 0x16, p);
    }

    if (cpu_state.current_item == 0)
    {
        cpu_state.current_item -= 1;
        return print_asm_line(address, 0x17, p);
    }

    return print_asm_line(address, instruction, p);
}
