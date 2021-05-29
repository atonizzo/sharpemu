// Copyright (c) 2016-2021, atonizzo@gmail.com
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
#include <stdlib.h>
#include <gtk/gtk.h>
#include <sc61860_emu.h>

uint32_t reg_index;

gboolean on_change_cancel_button_clicked(GtkWidget *widget, gpointer user_data)
{
    GObject *obj = gtk_builder_get_object(builder, "reg_value_window");
    gtk_widget_hide(GTK_WIDGET(obj));
    return TRUE;
}

gboolean on_change_OK_button_clicked(GtkWidget *widget, gpointer user_data)
{
    const gchar *entry_text;
    GObject *entry = gtk_builder_get_object(builder, "change_value_entry");
    entry_text = gtk_entry_get_text(GTK_ENTRY(entry));
    if (reg_index < 12)
    {
        cpu_state.imem[reg_index] = strtol(entry_text, NULL, 0);
    }
    else
    {
        switch (reg_index)
        {
        case 16:
            cpu_state.pc = strtol(entry_text, NULL, 0);
            break;
        case 17:
            cpu_state.dp = strtol(entry_text, NULL, 0);
            break;
        case 18:
            cpu_state.r = strtol(entry_text, NULL, 0) & 0x7F;
            break;
        }
    }
    GObject *obj = gtk_builder_get_object(builder, "reg_value_window");
    gtk_widget_hide(GTK_WIDGET(obj));
    display_core_info();
    return FALSE;
}

gboolean reg_i_key_press_callback(GtkWidget      *widget,
                                  GdkEvent       *event,
                                  gpointer        user_data )
{
    GObject *label = gtk_builder_get_object(builder, "label_reg_change_name");

    // First read the current value of the register we want to modify.
    char label_reg[64];
    reg_index = (uint32_t)(uint64_t)user_data;
    if (reg_index < 12)
    {
        gtk_label_set_text(GTK_LABEL(label), reg_to_str[reg_index]);
        sprintf(label_reg, "label_reg_%s", reg_to_str[reg_index]);
    }
    else
    {
        switch (reg_index)
        {
        case 16:
            gtk_label_set_text(GTK_LABEL(label), "PC");
            sprintf(label_reg, "label_reg_%s", "PC");
            break;
        case 17:
            gtk_label_set_text(GTK_LABEL(label), "DP");
            sprintf(label_reg, "label_reg_%s", "DP");
            break;
        case 18:
            gtk_label_set_text(GTK_LABEL(label), "r");
            sprintf(label_reg, "label_reg_%s", "r");
            break;
        }
    }

    label = gtk_builder_get_object(builder, label_reg);
    const gchar *label_text = gtk_label_get_text(GTK_LABEL(label));
    sprintf(label_reg, "0x%s", label_text);

    // Write the value in the
    GObject *entry = gtk_builder_get_object(builder, "change_value_entry");
    gtk_entry_set_text(GTK_ENTRY(entry), label_reg);

    GObject *obj = gtk_builder_get_object(builder, "reg_value_window");
    gtk_widget_show(GTK_WIDGET(obj));
    return TRUE;
}

// Register change callbacks.
gboolean on_label_reg_I_button_press_event(GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)0);
}

gboolean on_label_reg_J_button_press_event(GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)1);
}

gboolean on_label_reg_A_button_press_event(GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)2);
}

gboolean on_label_reg_B_button_press_event(GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)3);
}

gboolean on_label_reg_Xl_button_press_event(GtkWidget *widget,
                                            GdkEvent  *event,
                                            gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)4);
}

gboolean on_label_reg_Xh_button_press_event(GtkWidget *widget,
                                            GdkEvent  *event,
                                            gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)5);
}

gboolean on_label_reg_Yl_button_press_event(GtkWidget *widget,
                                            GdkEvent  *event,
                                            gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)6);
}

gboolean on_label_reg_Yh_button_press_event(GtkWidget *widget,
                                            GdkEvent  *event,
                                            gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)7);
}

gboolean on_label_reg_K_button_press_event(GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)8);
}

gboolean on_label_reg_L_button_press_event(GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)9);
}

gboolean on_label_reg_M_button_press_event(GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)10);
}

gboolean on_label_reg_N_button_press_event(GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    return reg_i_key_press_callback(widget, event, (gpointer)11);
}

gboolean on_label_reg_PC_button_press_event(GtkWidget *widget,
                                            GdkEvent  *event,
                                            gpointer   user_data)
{
    reg_i_key_press_callback(widget, event, (gpointer)(uint64_t)16);
    return TRUE;
}

gboolean on_label_reg_DP_button_press_event(GtkWidget *widget,
                                            GdkEvent  *event,
                                            gpointer   user_data)
{
    reg_i_key_press_callback(widget, event, (gpointer)(uint64_t)17);
    return TRUE;
}

gboolean on_label_reg_r_button_press_event(GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    reg_i_key_press_callback(widget, event, (gpointer)(uint64_t)18);
    return TRUE;
}

// -----------------------------------------------------------------------------
// Carry and Zero flags Dialog Box Handlers.
// -----------------------------------------------------------------------------
gboolean on_label_flag_button_press_event (GtkWidget *widget,
                                           GdkEvent  *event,
                                           gpointer   user_data)
{
    GObject *obj;
    if (cpu_state_past.flags.zero == 0)
    {
        obj = gtk_builder_get_object(builder, "rb_zero_zero");
        gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON(obj), TRUE);
        obj = gtk_builder_get_object(builder, "rb_zero_one");
        gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON(obj), FALSE);
    }
    else
    {
        obj = gtk_builder_get_object(builder, "rb_zero_zero");
        gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON(obj), FALSE);
        obj = gtk_builder_get_object(builder, "rb_zero_one");
        gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON(obj), TRUE);
    }

    if (cpu_state_past.flags.carry == 0)
    {
        obj = gtk_builder_get_object(builder, "rb_carry_zero");
        gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON(obj), TRUE);
        obj = gtk_builder_get_object(builder, "rb_carry_one");
        gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON(obj), FALSE);
    }
    else
    {
        obj = gtk_builder_get_object(builder, "rb_carry_zero");
        gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON(obj), FALSE);
        obj = gtk_builder_get_object(builder, "rb_carry_one");
        gtk_toggle_button_set_active (GTK_TOGGLE_BUTTON(obj), TRUE);
    }

    obj = gtk_builder_get_object(builder, "dialog_flags_status");
    gtk_widget_show(GTK_WIDGET(obj));
    return TRUE;
}

gboolean on_flags_change_ok_button_press_event (GtkWidget *widget,
                                               GdkEvent  *event,
                                               gpointer   user_data)
{
    GObject *obj = gtk_builder_get_object(builder, "rb_zero_one");
    gboolean t = gtk_toggle_button_get_active (GTK_TOGGLE_BUTTON(obj));
    cpu_state.flags.zero = (t == TRUE);
    obj = gtk_builder_get_object(builder, "rb_carry_one");
    t = gtk_toggle_button_get_active (GTK_TOGGLE_BUTTON(obj));
    cpu_state.flags.carry = (t == TRUE);
    obj = gtk_builder_get_object(builder, "dialog_flags_status");
    gtk_widget_hide(GTK_WIDGET(obj));
    display_core_info();
    return TRUE;
}

gboolean on_flags_chage_cancel_button_press_event (GtkWidget *widget,
                                                   GdkEvent  *event,
                                                   gpointer   user_data)
{
    GObject *obj = gtk_builder_get_object(builder, "dialog_flags_status");
    gtk_widget_hide(GTK_WIDGET(obj));
    return TRUE;
}


