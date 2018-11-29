// Copyright (c) 2016-2018, atonizzo@hotmail.com
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

#include <string.h>
#include <stdint.h>
#include <gtk/gtk.h>
#include <sc61860_emu.h>

GtkBuilder *builder;
uint8_t calculator_mode;

void abort_on_g_log(const gchar *log_domain,
                    GLogLevelFlags log_level,
                    const gchar *message,
                    gpointer user_data)
{
    __break__
}

void write_status_bar(gchar *info)
{
    GObject *status_bar = gtk_builder_get_object(builder, "status_bar");
    guint id = gtk_statusbar_get_context_id(GTK_STATUSBAR(status_bar), "info");
    gtk_statusbar_push(GTK_STATUSBAR(status_bar), id, info);
}

static void pre_run(void)
{
    // Disable the button and menu that perform the "Step" function.
    GObject *widget = gtk_builder_get_object(builder, "buttonbar_step");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), FALSE);
    widget = gtk_builder_get_object(builder, "buttonbar_next");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), FALSE);
    widget = gtk_builder_get_object(builder, "menu_debug_step");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), FALSE);
    widget = gtk_builder_get_object(builder, "menu_debug_next");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), FALSE);
    widget = gtk_builder_get_object(builder, "buttonbar_run");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), FALSE);
    widget = gtk_builder_get_object(builder, "menu_debug_reset");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), FALSE);

    // Enable the Stop button.
    widget = gtk_builder_get_object(builder, "buttonbar_stop");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), TRUE);

    // Disable the Reset button.
    widget = gtk_builder_get_object(builder, "buttonbar_reset");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), FALSE);
    write_status_bar("Running...");
}

static void post_run(void)
{
    // Re-enable the button and menu that perform the "Step" function.
    GObject *widget = gtk_builder_get_object(builder, "buttonbar_step");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), TRUE);
    widget = gtk_builder_get_object(builder, "buttonbar_next");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), TRUE);
    widget = gtk_builder_get_object(builder, "menu_debug_step");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), TRUE);
    widget = gtk_builder_get_object(builder, "buttonbar_next");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), TRUE);
    widget = gtk_builder_get_object(builder, "buttonbar_run");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), TRUE);
    widget = gtk_builder_get_object(builder, "menu_debug_reset");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), TRUE);

    // Enable the Reset button.
    widget = gtk_builder_get_object(builder, "buttonbar_reset");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), TRUE);

    // Disable the stop button.
    widget = gtk_builder_get_object(builder, "buttonbar_stop");
    gtk_widget_set_sensitive(GTK_WIDGET(widget), FALSE);
    write_status_bar("");
}

void load_hex_file(char *f)
{
    FILE *fp_hex = fopen(f, "r");
    int32_t rc = parse_hex(fp_hex);
    if (rc != 0)
    {
        char *message = "    Error loading HEX file.    ";
        // Create the widgets
        GObject *parent = gtk_builder_get_object(builder, "main_window");
        GtkWidget *dialog = gtk_dialog_new_with_buttons("Error",
                                              GTK_WINDOW(parent),
                                              GTK_DIALOG_DESTROY_WITH_PARENT,
                                              "_OK",
                                              GTK_RESPONSE_NONE,
                                              NULL);
        GtkWidget *content_area =
                               gtk_dialog_get_content_area(GTK_DIALOG (dialog));
        GtkWidget *label = gtk_label_new(message);

        // Ensure that the dialog box is destroyed when the user responds
        g_signal_connect_swapped(dialog,
                                 "response",
                                 G_CALLBACK (gtk_widget_destroy),
                                 dialog);

        // Add the label, and show everything we’ve added
        gtk_container_add(GTK_CONTAINER(content_area), label);
        gtk_widget_show_all(dialog);
        return;
    }
    fclose(fp_hex);
    display_core_info();
}

static gboolean view_memory_callback(GtkWidget *widget, gpointer user_data )
{
    // LCD window instantiation.
    GObject *obj = gtk_builder_get_object(builder, "memory_window");
    gtk_widget_show(GTK_WIDGET(obj));

    obj = gtk_builder_get_object(builder, "menu_view_memory");
    gtk_widget_set_sensitive(GTK_WIDGET(obj), FALSE);
    return TRUE;
}

static gboolean view_lcd_callback(GtkWidget *widget, gpointer user_data )
{
    // LCD window instantiation.
    GObject *obj = gtk_builder_get_object(builder, "lcd_window");
    gtk_widget_show(GTK_WIDGET(obj));

    obj = gtk_builder_get_object(builder, "menu_view_lcd");
    gtk_widget_set_sensitive(GTK_WIDGET(obj), FALSE);
    return TRUE;
}

static gboolean debug_step_callback(GtkWidget *widget, gpointer user_data )
{
    emulate_instruction();
    display_core_info();
    return TRUE;
}

static gboolean debug_stop_callback(GtkWidget *widget, gpointer user_data )
{
    g_idle_remove_by_data((gpointer)0xDEADBEEF);
    post_run();
    display_core_info();
    return TRUE;
}

extern uint32_t button_pressed;

static gboolean thread_run(gpointer arg)
{
    emulate_instruction();
    // Check if we have hit any breakpoint.
    int bp_number = check_breakpoint(cpu_state.pc);
    if (bp_number != -1)
    {
        // If the breakpoint we just hit is a temporary one, we will
        //  remove it from the list.
        if ((breakpoint_list[bp_number].attribute &
                       BREAKPOINT_ATTRIB_TEMPORARY) != 0)
        {
            // This breakpoint is no more valid.
            breakpoint_list[bp_number].attribute &=
                                 ~BREAKPOINT_ATTRIB_VALID_MASK;
        }

        g_idle_remove_by_data((gpointer)0xDEADBEEF);
        post_run();
        display_core_info();
    }
    return TRUE;
}

static gboolean debug_next_callback(GtkWidget *widget, gpointer user_data )
{
    // http://blog.borovsak.si/2009/06/multi-threaded-gtk-applications.html

    uint8_t instruction = pt.read_memory(cpu_state.pc);

    // This command is accepted for the CAL and CALL
    //  instructions. It will run and stop at the
    //  instruction following the CAL or CALL.
    if ((instruction & 0xE0) == 0xE0)
    {
        // CAL instruction. Set a temporary breakpoint 2 bytes past the CAL
        //  opcode.
        set_breakpoint(cpu_state.pc + 2,
                       BREAKPOINT_ATTRIB_INSTRUCTION |
                                                   BREAKPOINT_ATTRIB_TEMPORARY);
        pre_run();
        g_idle_add(thread_run, (gpointer)0xDEADBEEF);
        return 1;
    }
    if (instruction == 0x78)
    {
        // CALL instruction. Set a temporary breakpoint 3 bytes past the CALL
        //  opcode.
        set_breakpoint(cpu_state.pc + 3,
                       BREAKPOINT_ATTRIB_INSTRUCTION |
                                                   BREAKPOINT_ATTRIB_TEMPORARY);
        pre_run();
        g_idle_add(thread_run, (gpointer)0xDEADBEEF);
        return 1;
    }

    emulate_instruction();
    display_core_info();
    return TRUE;
}

static gboolean debug_run_callback(GtkWidget *widget, gpointer user_data )
{
    pre_run();
    g_idle_add(thread_run, (gpointer)0xDEADBEEF);
    return TRUE;
}

static gboolean mode_callback(GtkWidget *widget, gpointer user_data )
{
    calculator_mode = (int8_t)(long int)user_data;
    GObject *mode_label = gtk_builder_get_object(builder, "label_mode");
    GObject *this_widget;
    switch (calculator_mode)
    {
    case CALC_MODE_OFF:
        // The buttons that execute assembly instructions must be disabled until
        //  the calculator mode is changed to one of the operative ones.
        // Disable the button and menu that perform the "Step" function.
        this_widget = gtk_builder_get_object(builder, "buttonbar_step");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_next");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_stop");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_step");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_next");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_stop");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        gtk_label_set_text(GTK_LABEL(mode_label), "MODE: OFF");

        // Menus.
        this_widget = gtk_builder_get_object(builder, "menu_mode_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_mode_pro");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_mode_rsv");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);

        gtk_label_set_text(GTK_LABEL(mode_label), "MODE: OFF");
        return TRUE;
    case CALC_MODE_RUN:
        // The calculator mode is changed to one of the operative ones.
        this_widget = gtk_builder_get_object(builder, "buttonbar_step");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_next");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_stop");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_step");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_next");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_stop");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);

        this_widget = gtk_builder_get_object(builder, "menu_mode_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        this_widget = gtk_builder_get_object(builder, "menu_mode_pro");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_mode_rsv");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        gtk_label_set_text(GTK_LABEL(mode_label), "MODE: RUN");
        break;
    case CALC_MODE_PRO:
        // The calculator mode is changed to one of the operative ones.
        this_widget = gtk_builder_get_object(builder, "buttonbar_step");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_next");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_stop");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_step");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_next");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_stop");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);

        this_widget = gtk_builder_get_object(builder, "menu_mode_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_mode_pro");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        this_widget = gtk_builder_get_object(builder, "menu_mode_rsv");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        gtk_label_set_text(GTK_LABEL(mode_label), "MODE: PRO");
        break;
    case CALC_MODE_RSV:
        // The calculator mode is changed to one of the operative ones.
        this_widget = gtk_builder_get_object(builder, "buttonbar_step");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_next");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "buttonbar_stop");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_step");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_next");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_debug_stop");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);

        this_widget = gtk_builder_get_object(builder, "menu_mode_run");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_mode_pro");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), TRUE);
        this_widget = gtk_builder_get_object(builder, "menu_mode_rsv");
        gtk_widget_set_sensitive(GTK_WIDGET(this_widget), FALSE);
        gtk_label_set_text(GTK_LABEL(mode_label), "MODE: RSV");
        break;
    }
    return TRUE;
}

static gboolean debug_reset_callback(GtkWidget *widget, gpointer user_data )
{
    memset((void *)&cpu_state, '\0', sizeof(cpu_state));
    memset((void *)&cpu_state_past, '\0', sizeof(cpu_state));

    cpu_state.scratchpad.regs.i = DEFAULT_I_VALUE;
    cpu_state.scratchpad.regs.j = DEFAULT_J_VALUE;
    cpu_state.scratchpad.regs.a = DEFAULT_A_VALUE;
    cpu_state.scratchpad.regs.b = DEFAULT_B_VALUE;
    cpu_state.scratchpad.regs.xreg.x = DEFAULT_X_VALUE;
    cpu_state.scratchpad.regs.yreg.y = DEFAULT_Y_VALUE;
    cpu_state.scratchpad.regs.k = DEFAULT_K_VALUE;
    cpu_state.scratchpad.regs.l = DEFAULT_L_VALUE;
    cpu_state.scratchpad.regs.m = DEFAULT_M_VALUE;
    cpu_state.scratchpad.regs.n = DEFAULT_N_VALUE;
    cpu_state.r = DEFAULT_R_VALUE;
    cpu_state.p = DEFAULT_P_VALUE;
    cpu_state.q = DEFAULT_Q_VALUE;
    cpu_state.pc = DEFAULT_PC_VALUE;
    read_debug_events();
    display_core_info();
    return TRUE;
}

static gboolean label_callback_toggle_breakpoint(GtkWidget      *widget,
                                                 GdkEventButton *event,
                                                 gpointer        user_data)
{
    if (event->type != GDK_2BUTTON_PRESS)
        return FALSE;

    int line = (int64_t)user_data;
    char *image_name;
    // First find the PC at the line we have clicked.
    int rc = check_breakpoint(disassembly_buffer.line[line].pc);
    if (rc == -1)
    {
        // No breakpoint set in this line. Set it at the address of the line.
        set_breakpoint(disassembly_buffer.line[line].pc, 0);
        image_name = "./pixmaps/disasm_breakpoint_icon_16x16.jpg";
    }
    else
    {
        // Breakpoint already at this line.
        clear_breakpoint(disassembly_buffer.line[line].pc);
        image_name = "./pixmaps/disasm_no_icon_16x16.jpg";
    }

    char image_id[64];
    sprintf(image_id, "image_disassembly_line_%d", line);
    GObject *this_object = gtk_builder_get_object(builder, image_id);
    printf("C");
    gtk_image_set_from_file(GTK_IMAGE(this_object), image_name);
    printf("D\r\n");
    return TRUE;
}

static gboolean file_load_hex_callback(GtkWidget *widget, gpointer user_data )
{
    GObject *parent_window = gtk_builder_get_object(builder, "main_window");
    GtkWidget *dialog = gtk_file_chooser_dialog_new("Open File",
                                                GTK_WINDOW(parent_window),
                                                GTK_FILE_CHOOSER_ACTION_OPEN,
                                                "_Cancel",
                                                GTK_RESPONSE_CANCEL,
                                                "_OK",
                                                GTK_RESPONSE_OK,
                                                NULL);

    gint res = gtk_dialog_run(GTK_DIALOG(dialog));
    if (res == GTK_RESPONSE_OK)
    {
        GtkFileChooser *chooser = GTK_FILE_CHOOSER(dialog);
        char *filename = gtk_file_chooser_get_filename(chooser);
        load_hex_file(filename);
        g_free(filename);
    }
    display_core_info();
    gtk_widget_destroy (dialog);
    return 0;
}

static gboolean lcd_key_pressed_event(GtkWidget   *widget,
                                      GdkEventKey *event,
                                      gpointer     user_data)
{
    switch (event->type)
    {
    case GDK_KEY_PRESS:
        pt.keypress(event->keyval);
        break;
    case GDK_KEY_RELEASE:
        pt.keyrelease(event->keyval);
        break;
    default:
        break;
    }
    return TRUE;
}

int main(int argc, char *argv[])
{
    gtk_init(&argc, &argv);

    int c;
    diag_level = 0;
    user_file_name[0] = '\0';
    
    while ((c = getopt (argc, argv, "f:ir")) != -1)
    {
        switch (c)
        {
        case 'i':
            diag_level |= DIAG_LEVEL_DISASSEMBLE_LINE;
            break;
        case 'r':
            diag_level |= DIAG_LEVEL_DISASSEMBLE_LINE_REGS;
            break;
        case 'f':
            strcpy(user_file_name, optarg);
            break;
        default:
            break;
        }
      }

    int emulator_ok = setup_emulator();
    if (emulator_ok != 0)
    {
        g_print ("Unable to initialize emulator.\n");
        return -1;
    }

    // Construct a GtkBuilder instance and load our UI description.
    builder = gtk_builder_new();
    guint ret = gtk_builder_add_from_file(builder, "./xml/sharpemu.ui", NULL);
    if (ret == 0)
    {
        g_print ("Unable to initialize XML file.\n");
        return -1;
    }

    // Connect signal handlers to the constructed widgets.
    GObject *window = gtk_builder_get_object(builder, "main_window");
    g_signal_connect(window, "destroy", G_CALLBACK (gtk_main_quit), NULL);

    // -------------------------------------------------------------------------
    // Menuitems callbacks.
    // -------------------------------------------------------------------------
    // File->Load_Hex
    GObject *this_object = gtk_builder_get_object(builder,
                                                  "menu_file_load_hex");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(file_load_hex_callback),
                     NULL);

    // File->Quit.
    this_object = gtk_builder_get_object(builder, "menu_file_quit");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(gtk_main_quit),
                     NULL);

    // View->Memory
    this_object = gtk_builder_get_object(builder, "menu_view_memory");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(view_memory_callback),
                     NULL);

    // View->Memory
    this_object = gtk_builder_get_object(builder, "menu_view_lcd");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(view_lcd_callback),
                     NULL);

    // Debug->Step
    this_object = gtk_builder_get_object(builder, "menu_debug_step");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(debug_step_callback),
                     NULL);

    // Debug->Next
    this_object = gtk_builder_get_object(builder, "menu_debug_next");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(debug_next_callback),
                     NULL);

    // Debug->Run
    this_object = gtk_builder_get_object(builder, "menu_debug_run");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(debug_run_callback),
                     NULL);

    // Debug->Stop. This is disable when the emulator is not running.
    this_object = gtk_builder_get_object(builder, "menu_debug_stop");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(debug_stop_callback),
                     NULL);
    gtk_widget_set_sensitive(GTK_WIDGET(this_object), FALSE);

    // Debug->Reset.
    this_object = gtk_builder_get_object(builder, "menu_debug_reset");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(debug_reset_callback),
                     NULL);

    // Mode->Off.
    this_object = gtk_builder_get_object(builder, "menu_mode_off");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(mode_callback),
                     (gpointer)CALC_MODE_OFF);

    // Mode->Off.
    this_object = gtk_builder_get_object(builder, "menu_mode_pro");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(mode_callback),
                     (gpointer)CALC_MODE_PRO);

    // Mode->Off.
    this_object = gtk_builder_get_object(builder, "menu_mode_run");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(mode_callback),
                     (gpointer)CALC_MODE_RUN);

    // Mode->Off.
    this_object = gtk_builder_get_object(builder, "menu_mode_rsv");
    g_signal_connect(G_OBJECT(this_object),
                     "activate",
                     G_CALLBACK(mode_callback),
                     (gpointer)CALC_MODE_RSV);

    // -------------------------------------------------------------------------
    // Buttonbar callbacks.
    // -------------------------------------------------------------------------
    this_object = gtk_builder_get_object(builder, "buttonbar_step");
    g_signal_connect(G_OBJECT(this_object),
                     "clicked",
                     G_CALLBACK(debug_step_callback),
                     NULL);

    this_object = gtk_builder_get_object(builder, "buttonbar_next");
    g_signal_connect(G_OBJECT(this_object),
                     "clicked",
                     G_CALLBACK(debug_next_callback),
                     NULL);

    this_object = gtk_builder_get_object(builder, "buttonbar_run");
    g_signal_connect(G_OBJECT(this_object),
                     "clicked",
                     G_CALLBACK(debug_run_callback),
                     NULL);

    this_object = gtk_builder_get_object(builder, "buttonbar_stop");
    g_signal_connect(G_OBJECT(this_object),
                     "clicked",
                     G_CALLBACK(debug_stop_callback),
                     NULL);
    gtk_widget_set_sensitive(GTK_WIDGET(this_object), FALSE);

    this_object = gtk_builder_get_object(builder, "buttonbar_reset");
    g_signal_connect(G_OBJECT(this_object),
                     "clicked",
                     G_CALLBACK(debug_reset_callback),
                     NULL);

    this_object = gtk_builder_get_object(builder, "buttonbar_quit");
    g_signal_connect(G_OBJECT(this_object),
                     "clicked",
                     G_CALLBACK(gtk_main_quit),
                     NULL);

    // -------------------------------------------------------------------------
    // Label callbacks.
    // -------------------------------------------------------------------------
    int i;
    char label_name[64];
    for (i = 0; i < 12; i++)
    {
        sprintf(label_name, "label_reg_%s", reg_to_str[i]);
        this_object = gtk_builder_get_object(builder, label_name);
        g_signal_connect(G_OBJECT(this_object),
                         "button_press_event",
                         G_CALLBACK(reg_i_key_press_callback),
                         (gpointer)(uint64_t)i);
    }
    this_object = gtk_builder_get_object(builder, "label_reg_PC");
    g_signal_connect(G_OBJECT(this_object),
                     "button_press_event",
                     G_CALLBACK(reg_i_key_press_callback),
                     (gpointer)(uint64_t)16);

    this_object = gtk_builder_get_object(builder, "label_reg_DP");
    g_signal_connect(G_OBJECT(this_object),
                     "button_press_event",
                     G_CALLBACK(reg_i_key_press_callback),
                     (gpointer)(uint64_t)17);

    for (i = 0; i < DISASSEMBLY_LENGTH; i++)
    {
        // These are the labels in the disassembly window. When clicked a
        //  breakpoint at that address is toggled.
        sprintf(label_name, "label_disassembly_line%d", i);
        this_object = gtk_builder_get_object(builder, label_name);
        g_signal_connect(G_OBJECT(this_object),
                         "button_press_event",
                         G_CALLBACK(label_callback_toggle_breakpoint),
                         (gpointer)(uint64_t)i);
    }

    // Memory view window.
    memory_view_startup();

    // -------------------------------------------------------------------------
    // Value change window.
    // -------------------------------------------------------------------------
    GObject *obj = gtk_builder_get_object(builder, "reg_value_window");
    gtk_widget_hide(GTK_WIDGET(obj));
    this_object = gtk_builder_get_object(builder, "change_cancel_button");
    g_signal_connect(G_OBJECT(this_object),
                     "clicked",
                     G_CALLBACK(change_cancel_callback),
                     NULL);
    this_object = gtk_builder_get_object(builder, "change_OK_button");
    g_signal_connect(G_OBJECT(this_object),
                     "clicked",
                     G_CALLBACK(change_ok_callback),
                     NULL);

    // Setup the target device. The device is assumed to be off when run.
    pt.setup();

    // The buttons that execute assembly instructions must be disabled until
    //  the calculator mode is changed to one of the operative ones.
    mode_callback(NULL, (gpointer)CALC_MODE_OFF);

    GObject *lcd_window = gtk_builder_get_object(builder, "lcd_window");

    // These are the callback that allows us to capture the key presses that
    //  occur in the LCD window.
    g_signal_connect(G_OBJECT(lcd_window),
                     "key-press-event",
                     G_CALLBACK(lcd_key_pressed_event),
                     NULL);
    g_signal_connect(G_OBJECT(lcd_window),
                     "key-release-event",
                     G_CALLBACK(lcd_key_pressed_event),
                     NULL);

    display_core_info();

    g_log_set_handler(NULL,
                      G_LOG_LEVEL_WARNING | G_LOG_FLAG_FATAL
                                              | G_LOG_FLAG_RECURSION,
                      abort_on_g_log,
                      NULL);

    g_log_set_handler("Gtk",
                      G_LOG_LEVEL_CRITICAL | G_LOG_FLAG_FATAL
                                             | G_LOG_FLAG_RECURSION,
                      abort_on_g_log,
                      NULL);

    g_log_set_handler("GLib",
                      G_LOG_LEVEL_MASK | G_LOG_FLAG_FATAL
                                             | G_LOG_FLAG_RECURSION,
                      abort_on_g_log,
                      NULL);
    gtk_main();
    return 0;
}
