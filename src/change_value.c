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
#include <stdlib.h>
#include <gtk/gtk.h>
#include <sc61860_emu.h>

uint32_t reg_index;

gboolean change_cancel_callback(GtkWidget *widget, gpointer user_data)
{
    GObject *obj = gtk_builder_get_object(builder, "reg_value_window");
    gtk_widget_hide(GTK_WIDGET(obj));
    return TRUE;
}

gboolean change_ok_callback(GtkWidget *widget, gpointer user_data)
{
    const gchar *entry_text;
    GObject *entry = gtk_builder_get_object(builder, "change_value_entry");
    entry_text = gtk_entry_get_text(GTK_ENTRY(entry));
    if (reg_index < 12)
    {
        cpu_state_past.scratchpad.raw.mem[reg_index] = 
                                                   strtol(entry_text, NULL, 0);
    }
    else
    {
        if (reg_index == 16)
        {
            cpu_state.pc = strtol(entry_text, NULL, 0);
        }    
        else    
        {
            cpu_state.dp = strtol(entry_text, NULL, 0);
        }    
    }
    display_core_info();
    GObject *obj = gtk_builder_get_object(builder, "reg_value_window");
    gtk_widget_hide(GTK_WIDGET(obj));
    return FALSE;
}

gboolean reg_i_key_press_callback(GtkWidget      *widget,
                                  GdkEventButton *event,
                                  gpointer        user_data )
{
    if (event->type != GDK_2BUTTON_PRESS)
        return FALSE;

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
        if (reg_index == 16)
        {
            gtk_label_set_text(GTK_LABEL(label), "PC");
            sprintf(label_reg, "label_reg_%s", "PC");
        }    
        else    
        {
            gtk_label_set_text(GTK_LABEL(label), "DP");
            sprintf(label_reg, "label_reg_%s", "DP");
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
