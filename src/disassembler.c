#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <sc61860_emu.h>

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

static int32_t ptj_count_tmp = -1;
static int32_t ptj_count = -1;

const sc61860_instr_t sc61860_instr[] =
{
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
    {SC61860_FORMAT_CASE + (0x3 << 8) + 3, 0xFF, 0x16, ".case", sim_case},
    {SC61860_FORMAT_DEFAULT + (0x3 << 8) + 3, 0xFF, 0x17, ".default", sim_default},
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
    {SC61860_FORMAT_DTJ + (0 << 8) + 1, 0xFF, 0x69, "dtj", sim_table},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x6b, "test", sim_test},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x70, "adim", sim_arith},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x71, "sbim", sim_arith},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x74, "adia", sim_arith},
    {SC61860_FORMAT_IMMEDIATE8 + (4 << 8) + 2, 0xFF, 0x75, "sbia", sim_arith},
    {SC61860_FORMAT_ADDRESS16 + (8 << 8) + 3, 0xFF, 0x78, "call", sim_cal},
    {SC61860_FORMAT_ADDRESS16 + (6 << 8) + 3, 0xFF, 0x79, "jp", sim_jp},
    {SC61860_FORMAT_PTJ + (9 << 8) + 4, 0xFF, 0x7a, "ptj", sim_table},
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

static void print_shift(char* p, int32_t len)
{
    int32_t character_count = strlen(p);
    while (character_count++ < len)
        strcat(p, " ");
    // Print an extra blank so there is at least one buffer blank.
    strcat(p, " ");
}


static size_t print_instruction(uint16_t address,
                                uint8_t instruction,
                                uint32_t index,
                                char *p)
{
    uint8_t operand0, operand1, operand2;
    uint16_t target_address;

    int32_t imm;
    switch (sc61860_instr[index].attributes & 0xFF000000)
    {
    case SC61860_FORMAT_IMMEDIATE8:
        operand0 = pt[personality].read_memory(address + 1);
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand0,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%02X", operand0);
        break;
    case SC61860_FORMAT_NOOPERAND:
        sprintf(p,
                "%02X           %s",
                instruction,
                sc61860_instr[index].opcode);
        break;
    case SC61860_FORMAT_IMMEDIATE16:
        operand0 = pt[personality].read_memory(address + 1);
        operand1 = pt[personality].read_memory(address + 2);
        sprintf(p,
                "%02X %02X %02X     %s",
                instruction,
                operand0,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%04X", operand0 * 256 + operand1);
        break;
    case SC61860_FORMAT_ADDRESS16:
        operand0 = pt[personality].read_memory(address + 1);
        operand1 = pt[personality].read_memory(address + 2);
        sprintf(p,
                "%02X %02X %02X     %s",
                instruction,
                operand0,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%04X", operand0 * 256 + operand1);
        break;
    case SC61860_FORMAT_IMMEDIATE6:
        operand0 = instruction & 0x3F;
        sprintf(p,
                "%02X           %s",
                instruction,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%02X", operand0);
        break;
    case SC61860_FORMAT_ADDRESS13:
        operand0 = instruction & 0x1F;
        operand1 = pt[personality].read_memory(address + 1);
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        target_address = operand0 * 256 + operand1;
        sprintf(p + strlen(p), "$%04X", target_address);

        // Search the address descriptors to see if we can match this address
        //  to one of the well known ones.
        imm = 0;
        while (address_descriptors[imm].label != 0)
        {
            if (target_address == address_descriptors[imm].address)
            {
                sprintf(p + strlen(p),
                        "        ; %s",
                        address_descriptors[imm].label);
                break;
            }
            imm++;
        }
        break;
    case SC61860_FORMAT_RELATIVE_PLUS:
        operand0 = pt[personality].read_memory(address + 1);
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%04X", address + operand0 + 1);
        break;
    case SC61860_FORMAT_RELATIVE_MINUS:
        operand0 = pt[personality].read_memory(address + 1);
        sprintf(p,
                "%02X %02X        %s",
                instruction,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p), "$%04X", address - operand0 + 1);
        break;
    case SC61860_FORMAT_PTJ:
        operand0 = pt[personality].read_memory(address + 1);
        ptj_count_tmp = operand0;
        sprintf(p, "%02X %02X ", instruction, operand0);
        operand0 = pt[personality].read_memory(address + 2);
        operand1 = pt[personality].read_memory(address + 3);
        sprintf(p + strlen(p),
                "%02X %02X  %s",
                operand0,
                operand1,
                sc61860_instr[index].opcode);
        print_shift(p, OPERAND_COLUMN);
        operand0 = pt[personality].read_memory(address + 1);
        sprintf(p + strlen(p), "$%02X, ", operand0);
        operand0 = pt[personality].read_memory(address + 2);
        operand1 = pt[personality].read_memory(address + 3);
        sprintf(p + strlen(p), "$%04X", operand0 * 256 + operand1);
        break;
    case SC61860_FORMAT_DTJ:
        sprintf(p,
                "%02X           %s",
                instruction,
                sc61860_instr[index].opcode);
        ptj_count = ptj_count_tmp;
        break;
    case SC61860_FORMAT_CASE:
        sprintf(p,
                "%02X %02X %02X     .case",
                pt[personality].read_memory(address),
                pt[personality].read_memory(address + 1),
                pt[personality].read_memory(address + 2));
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p),
                "$%02X, $%04X",
                pt[personality].read_memory(address),
                pt[personality].read_memory(address + 1) * 256 +
                                      pt[personality].read_memory(address + 2));
        ptj_count -= 1;
        break;
    case SC61860_FORMAT_DEFAULT:
        sprintf(p,
                "%02X %02X        .default",
                pt[personality].read_memory(address),
                pt[personality].read_memory(address + 1));
        print_shift(p, OPERAND_COLUMN);
        sprintf(p + strlen(p),
                "$%04X",
                pt[personality].read_memory(address) * 256 +
                                      pt[personality].read_memory(address + 1));
        ptj_count -= 1;
        break;
    default:
        break;
    }
    return sc61860_instr[index].attributes & 0xFF;
}

uint32_t sc61860_disassembler(uint16_t address, uint8_t instruction, char *p)
{
    sprintf(p, "%04X: ", address);
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
                                         instruction,
                                         i,
                                         p + strlen(p));
            }
        }
        i++;
    }


    // Unrecognized instruction.
    sprintf(p, "%04X: %02X           ???", address, instruction);
    return 1;
}
