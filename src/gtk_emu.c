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
#include <sys/time.h>
#include <gtk/gtk.h>

#include <sc61860.h>
#include <sharpemu.h>

GtkBuilder *builder;

void abort_on_g_log(const gchar *log_domain,
                    GLogLevelFlags log_level,
                    const gchar *message,
                    gpointer user_data)
{
    g_print ("%s\n", message);
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

gboolean on_menu_view_memory_activate(GtkWidget *widget, gpointer user_data)
{
    // LCD window instantiation.
    GObject *obj = gtk_builder_get_object(builder, "memory_window");
    gtk_widget_show(GTK_WIDGET(obj));

    obj = gtk_builder_get_object(builder, "menu_view_memory");
    gtk_widget_set_sensitive(GTK_WIDGET(obj), FALSE);
    return TRUE;
}

gboolean on_menu_view_lcd_activate(GtkWidget *widget, gpointer user_data)
{
    // LCD window instantiation.
    GObject *obj = gtk_builder_get_object(builder, "lcd_window");
    gtk_widget_show(GTK_WIDGET(obj));

    obj = gtk_builder_get_object(builder, "menu_view_lcd");
    gtk_widget_set_sensitive(GTK_WIDGET(obj), FALSE);
    return TRUE;
}

gboolean on_buttonbar_step_clicked(GtkWidget *widget, gpointer user_data)
{
    // Start internal timer upon reset.
    if (cpu_state.pc == 0)
        gettimeofday(&timeval_start, NULL);

    emulate_instruction();
    display_core_info();
    return TRUE;
}

gboolean on_buttonbar_stop_clicked(GtkWidget *widget, gpointer user_data)
{
    g_idle_remove_by_data((gpointer)0xDEADBEEF);
    post_run();
    display_core_info();
    return TRUE;
}

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
        write_status_bar("Stopped");
    }
    return TRUE;
}

gboolean on_buttonbar_next_clicked(GtkWidget *widget, gpointer user_data )
{
    // Start internal timer upon reset.
    if (cpu_state.pc == 0)
        gettimeofday(&timeval_start, NULL);

    // http://blog.borovsak.si/2009/06/multi-threaded-gtk-applications.html

    uint8_t instruction = pt.read_memory(cpu_state.pc);

    // This command is accepted for the CAL and CALL instructions. It will
    //  run and stop at the instruction following the CAL or CALL.
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

gboolean on_buttonbar_run_clicked(GtkWidget *widget, gpointer user_data)
{
    // Start internal timer upon reset.
    if (cpu_state.pc == 0)
        gettimeofday(&timeval_start, NULL);

    pre_run();
    g_idle_add(thread_run, (gpointer)0xDEADBEEF);
    return TRUE;
}

static void on_menu_mode_activate(GtkMenuItem *menuItem, gpointer user_data)
{
    uint8_t previous_mode = cpu_state.mode;
    GObject *mode_label = gtk_builder_get_object(builder, "mode_combobox");
    cpu_state.mode = (long)user_data;
    gtk_combo_box_set_active (GTK_COMBO_BOX(mode_label), cpu_state.mode);

    if (cpu_state.mode == CALC_MODE_OFF)
        lcd_off();
    else
    {
        if (previous_mode == CALC_MODE_OFF)
            pt.lcd_refresh();
    }
}

void on_menu_mode_off_activate(GtkMenuItem *menuItem, gpointer user_data)
{
    on_menu_mode_activate(NULL, (gpointer)CALC_MODE_OFF);
}

void on_menu_mode_run_activate(GtkMenuItem *menuItem, gpointer user_data)
{
    on_menu_mode_activate(NULL, (gpointer)CALC_MODE_RUN);
}

void on_menu_mode_pro_activate(GtkMenuItem *menuItem, gpointer user_data)
{
    on_menu_mode_activate(NULL, (gpointer)CALC_MODE_PRO);
}

void on_menu_mode_rsv_activate(GtkMenuItem *menuItem, gpointer user_data)
{
    on_menu_mode_activate(NULL, (gpointer)CALC_MODE_RSV);
}

gboolean on_buttonbar_reset_clicked(GtkWidget *widget, gpointer user_data )
{
    memset((void *)&cpu_state, '\0', sizeof(cpu_state));
    memset((void *)&cpu_state_past, '\0', sizeof(cpu_state));

    cpu_state.imem[IRAM_REG_I] = DEFAULT_I_VALUE;
    cpu_state.imem[IRAM_REG_J] = DEFAULT_J_VALUE;
    cpu_state.imem[IRAM_REG_A] = DEFAULT_A_VALUE;
    cpu_state.imem[IRAM_REG_B] = DEFAULT_B_VALUE;
    cpu_state.imem[IRAM_REG_XL] = DEFAULT_X_VALUE;
    cpu_state.imem[IRAM_REG_XH] = DEFAULT_X_VALUE >> 8;
    cpu_state.imem[IRAM_REG_YL] = DEFAULT_Y_VALUE;
    cpu_state.imem[IRAM_REG_YH] = DEFAULT_Y_VALUE >> 8;
    cpu_state.imem[IRAM_REG_K] = DEFAULT_K_VALUE;
    cpu_state.imem[IRAM_REG_L] = DEFAULT_L_VALUE;
    cpu_state.imem[IRAM_REG_M] = DEFAULT_M_VALUE;
    cpu_state.imem[IRAM_REG_N] = DEFAULT_N_VALUE;
    cpu_state.r = DEFAULT_R_VALUE;
    cpu_state.p = DEFAULT_P_VALUE;
    cpu_state.q = DEFAULT_Q_VALUE;
    cpu_state.pc = DEFAULT_PC_VALUE;
    read_debug_events();
    display_core_info();
    cpu_state.table_items = -1;
    cpu_state.current_item = -1;
    return TRUE;
}

static gboolean label_callback_toggle_breakpoint(GtkWidget      *widget,
                                                 GdkEventButton *event,
                                                 gpointer        user_data)
{
    if (event->type != GDK_2BUTTON_PRESS)
        return FALSE;

    int gp = GPOINTER_TO_INT(g_slist_nth_data(disassembly_list,
                                              GPOINTER_TO_INT(user_data)));
    char *image_name;
    // First find the PC at the line we have clicked.
    int rc = check_breakpoint(gp >> 16);
    if (rc == -1)
    {
        // No breakpoint set in this line. Set it at the address of the line.
        set_breakpoint(gp >> 16, 0);
        image_name = "./pixmaps/disasm_breakpoint_icon_16x16.jpg";
    }
    else
    {
        // Breakpoint already at this line.
        clear_breakpoint(gp >> 16);
        image_name = "./pixmaps/disasm_no_icon_16x16.jpg";
    }

    char image_id[64];
    sprintf(image_id, "image_disassembly_line_%d", GPOINTER_TO_INT(user_data));
    GObject *this_object = gtk_builder_get_object(builder, image_id);
    gtk_image_set_from_file(GTK_IMAGE(this_object), image_name);
    return TRUE;
}

gboolean on_menu_file_load_hex_activate(GtkWidget *widget, gpointer user_data)
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

// About box.
void on_menu_help_about_activate(GtkMenuItem *menuItem, gpointer user_data)
{
    GObject *dlg_about = gtk_builder_get_object(builder, "dlg_about");
    gtk_widget_show(GTK_WIDGET(dlg_about));
}

void on_dlg_about_response(GtkDialog *dialog,
                           gint response_id,
                           gpointer user_data)
{
    GObject *dlg_about = gtk_builder_get_object(builder, "dlg_about");
    gtk_widget_hide(GTK_WIDGET(dlg_about));
}


void on_mode_combobox_changed (GtkComboBox *widget, gpointer user_data)
{
    GObject *mode_combo_box = gtk_builder_get_object(builder, "mode_combobox");
    gint active = gtk_combo_box_get_active (GTK_COMBO_BOX(mode_combo_box));
    on_menu_mode_activate(NULL, (gpointer)(long)active);
}

static void print_usage()
{
    printf("Usage: pc1251 [options]\r\n");
    printf("[options]\r\n");
    printf("-i N        Store up to N emulated instructions in the\r\n"
           "            \"instructions.txt\" file. Use 0 for unlimited"
           " store.\r\n");
    printf("-r          Store the content of the registers in the\r\n"
           "            \"instructions.txt\" file along with the "
           "instructions.\r\n");
    printf("-f filename Load the stated HEX file in memory.\r\n");
}

int main(int argc, char *argv[])
{
    gtk_init(&argc, &argv);

    int c;
    diag_level = 0;
    user_file_name[0] = '\0';
    save_start = 0;
    save_end = 0x10000;

    while ((c = getopt (argc, argv, "f:hir")) != -1)
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
        case 'h':
        case '?':
            print_usage();
            exit(1);
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
    guint ret = gtk_builder_add_from_file(builder, "xml/sharpemu.ui", NULL);
    if (ret == 0)
    {
        g_print ("Unable to initialize XML file.\n");
        return -1;
    }

    // Connect signal handlers to the constructed widgets.
    GObject *window = gtk_builder_get_object(builder, "main_window");
    g_signal_connect(window, "destroy", G_CALLBACK (gtk_main_quit), NULL);
    gtk_builder_connect_signals(builder, NULL);

    // Debug->Stop. This is disable when the emulator is not running.
    GObject *this_object = gtk_builder_get_object(builder, "menu_debug_stop");
    gtk_widget_set_sensitive(GTK_WIDGET(this_object), FALSE);

    this_object = gtk_builder_get_object(builder, "buttonbar_stop");
    gtk_widget_set_sensitive(GTK_WIDGET(this_object), FALSE);

    // -------------------------------------------------------------------------
    // Label callbacks.
    // -------------------------------------------------------------------------
    char label_name[64];
    for (int i = 0; i < DISASSEMBLY_LENGTH; i++)
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

    // Setup the target device. The device is assumed to be off when run.
    pt.setup();

    // The buttons that execute assembly instructions must be disabled until
    //  the calculator mode is changed to one of the operative ones.
    on_menu_mode_off_activate(NULL, NULL);

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
