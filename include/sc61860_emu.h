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

#ifndef __SC61860_EMU_H__
#define __SC61860_EMU_H__

#include <gtk/gtk.h>

typedef struct
{
    GtkWidget *id;
    char *text;
} label_layout_t;

typedef struct
{
    uint16_t address;
    label_layout_t labels[8];
} label_descriptor_t;
extern label_descriptor_t label_descriptor[];

int debug_break(int);
#define __break__                       debug_break(3);

// Diagnostic infrastructucture.
extern uint32_t diag_level;

//! ASSERT(x, y) test a condition 'x'. If the condition is false it behaves:
//! if __DIAG__ is defined: It prints out a message and hangs.
//! if __DIAG__ is not defined: It returns with an error message 'y'.
#define DIAG(_args_)  do {printf _args_ ;} while(0)
#define ASSERT_EQ(x,y) do{if(((long)x!=(long)y)){                             \
         DIAG(("---  ASSERT_EQ() FAILED ---\r\n"                              \
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

// This structure holds the start time of the timer used to calculate the
//  512ms and 2ms values used by the TEST instruction.
extern struct timeval timeval_start;

// This is the file handle to be used to log memory read/write operations.
extern FILE *fp_memaccess;

// This is the image of the calculator memory. The sc61860 can address up to
//  16 bits of memory, thus 65536 bytes.
extern uint8_t memory_image[65536];
extern const char *regs_to_str[12];

// This is the number of rows shown in the memory view window. Each row is
//  made of a fixed 16 bytes of memory.
#define MEM_VIEW_ROWS                   16
extern uint8_t mem_view_past[MEM_VIEW_ROWS * 16];

#define CALC_MODE_RUN               0
#define CALC_MODE_RSV               1
#define CALC_MODE_PRO               2
#define CALC_MODE_OFF               3

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

#define DISASSEMBLY_LENGTH          25
#define DISASSEMBLY_CURSOR_MAX      (DISASSEMBLY_LENGTH * 2 / 3)

#define BREAKPOINT_LIST_LENGTH          128

#define BREAKPOINT_ATTRIB_VALID_MASK    (1 << 0)
#define BREAKPOINT_ATTRIB_TYPE_MASK     (0x0F << 2)

#define BREAKPOINT_ATTRIB_VALID         (1 << 0)
#define BREAKPOINT_ATTRIB_TEMPORARY     (1 << 1)
#define BREAKPOINT_ATTRIB_PC            (0x00 << 2)
#define BREAKPOINT_ATTRIB_MEMREAD       (0x01 << 2)
#define BREAKPOINT_ATTRIB_MEMWRITE      (0x02 << 2)
#define BREAKPOINT_ATTRIB_INSTRUCTION   (0x03 << 2)

// Technically the value of the registers u[on reset is undefined. It is though
//  useful to assign them a specific value in case we want to test our own
//  routines.
#define DEFAULT_I_VALUE                 0
#define DEFAULT_J_VALUE                 0
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
#define DEFAULT_PC_VALUE                0

#define PORTC_DISPLAY_ON                (1 << 0)
#define PORTC_CNTRST                    (1 << 1)
#define PORTC_CPU_HLT                   (1 << 2)
#define PORTC_POWER_OFF                 (1 << 3)
#define PORTC_BZ1                       (1 << 4)
#define PORTC_BZ2                       (1 << 5)
#define PORTC_BZ3                       (1 << 6)

typedef struct __memory_descriptor
{
    char *file_name;
    uint16_t base_address;
} memory_descriptor_t;

typedef struct __model_file_descriptor
{
    char *model_name;
    memory_descriptor_t irom; // File name of internal ROM.
    memory_descriptor_t erom; // File name of external ROM.
    uint16_t ram_start;
    uint16_t ram_end;
    int32_t (* setup)(void);
    uint8_t (* read_memory)(uint16_t);
    void   (* write_memory)(uint16_t, uint8_t);
    uint8_t (* ina)(void);
    uint8_t (* inb)(void);
    void (* outa)(void);
    void (* outb)(void);
    void (* outc)(void);
    void (* outf)(void);
    void (* keypress)(uint16_t);
    void (* keyrelease)(uint16_t);
} model_file_descriptor_t;

extern model_file_descriptor_t pt;

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

struct __breakpoint_event
{
    // Can be an address or an opcode.
    uint16_t address;
    uint16_t data;
    uint16_t attribute;
};

extern struct __breakpoint_event breakpoint_list[BREAKPOINT_LIST_LENGTH];

// Maximum number of instructions to store in the 'instructions.txt' file.
// Use 0 for unlimited.
extern long save_start, save_end;

int set_breakpoint(uint16_t, uint16_t);
int clear_breakpoint(uint16_t);
int check_breakpoint(uint16_t);

extern const sc61860_instr_t sc61860_instr[136];

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

uint32_t print_asm_line(uint16_t, uint8_t, GString *);
uint32_t sc61860_disassembler(uint16_t, uint8_t, GString *);
void emulate_instruction(void);
void sim_not_implemented(void);
void print_layout(void);
void display_core_info(void);
int32_t parse_hex(FILE *);
void memory_view_startup(void);

// Personality stuff.
extern int personality;
void print_lcd_bitmap(uint16_t address, uint8_t data);

extern address_descriptor_t address_descriptors[];
extern uint16_t mem_view_start_address;
void print_mem_view(void);
int read_debug_events(void);

// GTK+
extern char user_file_name[128];
extern GtkBuilder *builder;
void write_status_bar(gchar *);
int setup_emulator(void);
extern GtkBuilder *builder;
gboolean change_cancel_callback(GtkWidget *, gpointer);
gboolean change_ok_callback(GtkWidget *, gpointer);
gboolean reg_i_key_press_callback(GtkWidget *, GdkEvent *, gpointer);
gboolean reg_pc_key_press_callback(GtkWidget *, GdkEventButton *, gpointer);
void on_menu_help_about_activate(GtkMenuItem *, gpointer);
void on_menu_help_about_activate_item(GtkMenuItem *menuItem, gpointer user_data);
void on_dlg_about_response(GtkDialog *, gint, gpointer);
double time_diff(struct timeval, struct timeval);

static inline uint8_t read_mem(uint16_t address)
{
    return pt.read_memory(address);
}

static inline void write_mem(uint16_t address, uint8_t data)
{
    pt.write_memory(address, data);
}

// Debug.
extern int store_instructions;
void dump_memory(uint16_t, uint16_t);
extern long single_step_break;

#endif
