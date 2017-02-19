// Copyright (c) 2016-2017, atonizzo@lycos.com
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


#ifndef __SC61860_EMU_H__
#define __SC61860_EMU_H__

#include <gtk/gtk.h>

typedef struct
{
    GtkWidget *id;
    char *text;
} label_layout_t;

#include <pc1251.h>

int break_here(int);
#define __break__                       break_here(3);

// Diagnostic infrastructucture.
extern uint32_t diag_level;

//! ASSERT(x, y) test a condition 'x'. If the condition is false it behaves:
//! if __DIAG__ is defined: It prints out a message and hangs.
//! if __DIAG__ is not defined: It returns with an error message 'y'.
#define DIAG(_args_)  do {printf _args_ ;} while(0)
#define ASSERT_EQ(x,y) do{if(((long)x!=(long)y)){                             \
         DIAG(DIAG_SELECT_ALWAYS, ("---  ASSERT_EQ() FAILED ---\r\n"          \
                                   "File:     %s\r\n"                         \
                                   "Function  %s\r\n"                         \
                                   "Line      %d\r\n"                         \
                                   "Left:     %l\r\n"                         \
                                   "Right:    %l\r\n",                        \
                      __FILE__,__FUNCTION__,__LINE__,y,x)); while(1); }}while(0)
#define ASSERT_LT(x, y) do{if(((long)x >= (long)y)){                          \
         DIAG(("---  ASSERT_LT() FAILED ---\r\n"                              \
                                   "File:     %s\r\n"                         \
                                   "Function  %s\r\n"                         \
                                   "Line      %l\r\n"                         \
                                   "%s should be less than %l\r\n",           \
                      __FILE__,__FUNCTION__,__LINE__,#x,y)); while(1);}}while(0)
#define EXPECT_EQ(x, y) do{if((long)x!=(long)y){                              \
         DIAG(("---  EXPECT_EQ() FAILED ---\r\n"                              \
                                   "File:     %s\r\n"                         \
                                   "Function  %s\r\n"                         \
                                   "Line      %d\r\n"                         \
                                   "Left:     %l\r\n"                         \
                                   "Right:    %l\r\n",                        \
                               __FILE__,__FUNCTION__,__LINE__,y,x)); }}while (0)
#define ASSERT_NE(x, y) do{if((long)x==(long)y){                              \
         DIAG(("---  ASSERT_NE() FAILED ---\r\n"                              \
                                   "File:     %s\r\n"                         \
                                   "Function  %s\r\n"                         \
                                   "Line      %d\r\n"                         \
                                   "Left:     %ld\r\n"                        \
                                   "Right:    %ld\r\n",                       \
                               __FILE__,__FUNCTION__,__LINE__,(long)y,(long)x)); }}while (0)
#define ASSERT_GE(x, y) do{if((long)x<(long)y){                               \
         DIAG(("---  ASSERT_GE() FAILED ---\r\n"                              \
                                   "File:     %s\r\n"                         \
                                   "Function  %s\r\n"                         \
                                   "Line      %d\r\n"                         \
                                   "Left:     %l\r\n"                         \
                                   "Right:    %l\r\n",                        \
                               __FILE__,__FUNCTION__,__LINE__,y,x)); }}while (0)
#define ASSERT_LE(x, y) do{if((long)x>(long)y){                               \
         DIAG(("---  ASSERT_LE() FAILED ---\r\n"                              \
                                   "File:     %s\r\n"                         \
                                   "Function  %s\r\n"                         \
                                   "Line      %d\r\n"                         \
                                   "Left:     %l\r\n"                         \
                                   "Right:    %l\r\n",                        \
                               __FILE__,__FUNCTION__,__LINE__,y,x)); }}while (0)
#define EXPECT_NE(x, y) do{if((long)x==(long)y){                              \
         DIAG(("---  EXPECT_NE() FAILED ---\r\n"                              \
                                   "File:     %s\r\n"                         \
                                   "Function  %s\r\n"                         \
                                   "Line      %d\r\n"                         \
                                   "Left:     %l\r\n"                         \
                                   "Right:    %l\r\n",                        \
                               __FILE__,__FUNCTION__,__LINE__,y,x)); }}while (0)
#define EXPECT_LT(x, y) do{if((long)x >= (long)y){                            \
         DIAG(("---  EXPECT_LT() FAILED ---\r\n"                              \
                                   "File:     %s\r\n"                         \
                                   "Function  %s\r\n"                         \
                                   "Line      %d\r\n"                         \
                                   "Left:     %l\r\n"                         \
                                   "Right:    %l\r\n",                        \
                               __FILE__,__FUNCTION__,__LINE__,y,x)); }}while (0)

#define DIAG_LEVEL_DISASSEMBLE_LINE         (1 << 16)
#define DIAG_LEVEL_DISASSEMBLE_LINE_REGS    (1 << 17)

// This strudcture holds the start time of the timer used to calculate the
//  512ms and 2ms values used by the TEST instruction.
extern struct timeval timeval_start;

// This is the file handle to be used to log memory read/write operations.
FILE *fp_memaccess;

// This is the image of the calculator memory. The sc61860 can address up to
//  16 bits of memory, thus 65536 bytes.
extern uint8_t memory_image[65536];
extern char *reg_to_str[16];

// This is the number of rows shown in the memory view window. Each row is
//  made of a fixed 16 bytes of memory.
#define MEM_VIEW_ROWS                   16
extern uint8_t mem_view_past[MEM_VIEW_ROWS * 16];

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

struct __bcd_register
{
    uint8_t r[8];
} __attribute__((__packed__));

#define regnum(field)    ((unsigned long) \
                    &(((struct __sc61860_iregs *) 0)->field))

struct __sc61860_iregs
{
    uint8_t i;
    uint8_t j;
    uint8_t a;
    uint8_t b;
    union
    {
        uint16_t x;
        struct
        {
            uint8_t xl;
            uint8_t xh;
        } b;
    } xreg __attribute__((packed));
    union
    {
        uint16_t y;
        struct
        {
            uint8_t yl;
            uint8_t yh;
        } b;
    } yreg __attribute__((packed));
    uint8_t k;
    uint8_t l;
    uint8_t m;
    uint8_t n;
    uint8_t working[4];
    struct __bcd_register Xreg;
    struct __bcd_register Yreg;
    struct __bcd_register Zreg;
    struct __bcd_register Wreg;
    uint8_t stack[44];
    uint8_t ioa;    // I/O port A
    uint8_t iob;    // I/O port B
    uint8_t iof;    // I/O port F
    uint8_t ioc;    // I/O port C
} __attribute__((packed));

union __sc61860_scratchpad
{
    struct __sc61860_iregs regs;
    struct
    {
        uint8_t mem[96];
    } raw;
};

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
    uint16_t dp;
    uint16_t pc;
    uint32_t cycles;
    uint8_t porta;
    uint8_t portb;
    uint8_t portf;
    uint8_t portc;
    uint8_t table_items;
    uint8_t cdp;       // The value of the byte pointed to by DP.
    union __sc61860_scratchpad scratchpad;
};

extern struct __cpu_state cpu_state;
extern struct __cpu_state cpu_state_past;

#define DISASSEMBLY_LENGTH          25

#define DISASSEMBLY_CURSOR_MAX      (DISASSEMBLY_LENGTH * 2 / 3)
struct __disassembly_line
{
    uint16_t pc;
    uint8_t  opcode;
};

struct __disassembly_buffer
{
    struct __disassembly_line line[DISASSEMBLY_LENGTH];
};

extern struct __disassembly_buffer disassembly_buffer;

#define BREAKPOINT_LIST_LENGTH          128

#define BREAKPOINT_ATTRIB_VALID_MASK    (1 << 0)
#define BREAKPOINT_ATTRIB_TYPE_MASK     (0x0F << 2)

#define BREAKPOINT_ATTRIB_VALID         (1 << 0)
#define BREAKPOINT_ATTRIB_TEMPORARY     (1 << 1)
#define BREAKPOINT_ATTRIB_PC            (0x00 << 2)
#define BREAKPOINT_ATTRIB_MEMREAD       (0x01 << 2)
#define BREAKPOINT_ATTRIB_MEMWRITE      (0x02 << 2)
#define BREAKPOINT_ATTRIB_INSTRUCTION   (0x03 << 2)

struct __breakpoint_event
{
    uint16_t pc;
    uint16_t attribute;
};
extern struct __breakpoint_event breakpoint_list[BREAKPOINT_LIST_LENGTH];

const sc61860_instr_t sc61860_instr[136];

// Technically the value of the registers u[on reset is undefined. It is though
//  useful to assign them a specific value in case we want to test our own
//  routines.
#define DEFAULT_I_VALUE                 0
#define DEFAULT_J_VALUE                 1
#define DEFAULT_A_VALUE                 0
#define DEFAULT_B_VALUE                 0
#define DEFAULT_X_VALUE                 0
#define DEFAULT_Y_VALUE                 0
#define DEFAULT_K_VALUE                 0
#define DEFAULT_L_VALUE                 0
#define DEFAULT_M_VALUE                 0
#define DEFAULT_N_VALUE                 0
#define DEFAULT_P_VALUE                 0
#define DEFAULT_Q_VALUE                 0
#define DEFAULT_R_VALUE                 0x5C
#define DEFAULT_DP_VALUE                0
//#define DEFAULT_PC_VALUE                0xC200
#define DEFAULT_PC_VALUE                0

#define CLOCK_FREQUENCY_HZ              768000
#define CLOCK_FREQUENCY_KHZ             (CLOCK_FREQUENCY_HZ / 1000)
#define PORTA_OFFSET                    0x5c
#define PORTB_OFFSET                    0x5d
#define PORTC_OFFSET                    0x5f
#define PORTF_OFFSET                    0x5e

#define PORTC_BITS_DISPLAY              (1 << 0)
#define PORTC_BITS_CNTRST               (1 << 1)
#define PORTC_BITS_HLT                  (1 << 2)
#define PORTC_BITS_OFF                  (1 << 3)
#define PORTC_BITS_BZ1                  (1 << 4)
#define PORTC_BITS_BZ2                  (1 << 5)
#define PORTC_BITS_BZ3                  (1 << 6)

typedef struct __memory_descriptor
{
    char *file_name;
    int16_t base_address;
} memory_descriptor_t;

typedef struct __model_file_descriptor
{
    char *model_name;
    memory_descriptor_t irom; // File name of internal ROM.
    memory_descriptor_t erom; // File name of external ROM.
    int32_t (* setup)(void);
    uint8_t (* read_memory)(uint16_t);
    void   (* write_memory)(uint16_t, uint8_t);
    void (* ina)(void);
    void (* inb)(void);
    void (* outa)(void);
    void (* outb)(void);
    void (* outc)(void);
    void (* outf)(void);
    void (* keypress)(uint16_t);
    void (* keyrelease)(uint16_t);
} model_file_descriptor_t;

extern model_file_descriptor_t pt[1];

// Instruction simulation.
void sim_arith(void);
void sim_bcd(void);
void sim_bool(void);
void sim_cal(void);
void sim_carry(void);
void sim_case(void);
void sim_cp(void);
void sim_data(void);
void sim_default(void);
void sim_exa(void);
void sim_fil(void);
void sim_io(void);
void sim_jp(void);
void sim_jr(void);
void sim_incdec(void);
void sim_leave(void);
void sim_lr(void);
void sim_loop(void);
void sim_lp(void);
void sim_mv(void);
void sim_nop(void);
void sim_not_implemented(void);
void sim_rtn(void);
void sim_shift(void);
void sim_stack(void);
void sim_store(void);
void sim_table(void);
void sim_test(void);
void sim_wait(void);
void sim_xy(void);

uint32_t sc61860_disassembler(uint16_t, uint8_t, char *);
void emulate_instruction(void);
void sim_not_implemented(void);
void print_layout(void);
void display_core_info(void);
int32_t parse_hex(FILE *);

// Personality stuff.
extern int personality;
uint8_t pc_1251_read_memory(uint16_t);
void    pc_1251_write_memory(uint16_t, uint8_t);
int32_t pc_1251_setup(void);
void    pc_1251_ina(void);
void    pc_1251_inb(void);
void    pc_1251_outa(void);
void    pc_1251_outb(void);
void    pc_1251_outc(void);
void    pc_1251_outf(void);
void    pc_1251_keypress(uint16_t);
void    pc_1251_keyrelease(uint16_t);
void print_lcd_bitmap(uint16_t address, uint8_t data);

typedef struct __address_descriptor
{
    uint16_t  address;
    char     *label;
} address_descriptor_t;

typedef struct __keyboard_encoding
{
    uint8_t row;
    uint8_t mask;
} keyboard_encoding_t;

extern address_descriptor_t address_descriptors[];
void print_mem_view(void);
extern uint16_t mem_view_start_address;

// LCD.
extern uint8_t lcd_status[0x7C];
void lcd_setup(void);
void lcd_service(uint16_t, uint8_t);
void lcd_paint(void);

// GTK+
extern char user_file_name[128];
extern GtkBuilder *builder;
void write_status_bar(gchar *);
int setup_emulator(void);
extern GtkBuilder *builder;
gboolean change_cancel_button_callback(GtkWidget *, gpointer);
gboolean change_cancel_ok_callback(GtkWidget *, gpointer);
gboolean reg_i_key_press_callback(GtkWidget *, GdkEventButton *, gpointer);

static inline uint8_t read_mem(uint16_t address)
{
    return pt[personality].read_memory(address);
}

static inline void write_mem(uint16_t address, uint8_t data)
{
    pt[personality].write_memory(address, data);
}

// Debug.
extern int store_instructions;
void dump_memory(uint16_t, uint16_t);

#endif