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

#include <stdint.h>
#include <string.h>
#include <gtk/gtk.h>
#include <sc61860_emu.h>

uint16_t mem_view_start_address = 0;

char sharp_char_map[] =
{
    '.', ' ', '\'', '?', '!', '#', '%', '.',
    '#', '.', '.', ',', ';', ':', '.', '&',
    '.', ' ', '\'', '?', '!', '#', '%', '.',
    '#', '.', '.', ',', ';', ':', '.', '&',
    '(', ')', '>', '<', '=', '+', '-', '*',
    '/', '^', '.', '.', '.', '.', '.', '.',
    '0', '1', '2', '3', '4', '5', '6', '7',
    '8', '9', '.', '.', '.', '~', '_', ' ',
    ' ', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
    'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',
    'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
    'X', 'Y', 'Z', '.', '.', '.', '.', '.',
};

void on_memory_view_spinbutton_value_changed (GtkSpinButton *spin_button,
                                              gpointer       user_data)
{
/*    __break__
    g_print("on_memory_view_spinbutton_value_changed\r\n");
    GObject *object = gtk_builder_get_object(builder, "memory_view_spinbutton");
    gint val = gtk_spin_button_get_value(GTK_SPIN_BUTTON(object));
    if (val == 65535)
    {
        mem_view_start_address = 65536 - 256;
        gtk_spin_button_set_value(GTK_SPIN_BUTTON(object),
                                  mem_view_start_address);
    }
    else
        mem_view_start_address = val;
    print_mem_view();*/
}

gboolean on_memory_view_spinbutton_scroll_event (GtkWidget *widget,
                                                 GdkEvent  *event,
                                                 gpointer   user_data)
{
//    g_print("on_memory_view_spinbutton_scroll_event\r\n");
    GdkEventScroll *this_event = (GdkEventScroll*)event;
    GObject *object = gtk_builder_get_object(builder, "memory_view_spinbutton");
    mem_view_start_address = gtk_spin_button_get_value(GTK_SPIN_BUTTON(object));
    if (this_event->direction == GDK_SCROLL_UP)
        mem_view_start_address += 0x100;
    else
        mem_view_start_address -= 0x100;
    gtk_spin_button_set_value (GTK_SPIN_BUTTON(object), mem_view_start_address);
    print_mem_view();
    return TRUE;
}

/*gboolean on_data_view_box_scroll_event (GtkWidget *widget,
                                        GdkEvent  *event,
                                        gpointer   user_data)
{
    g_print("on_memory_view_spinbutton_scroll_event\r\n");
    GdkEventScroll *this_event = (GdkEventScroll*)event;
    GObject *object = gtk_builder_get_object(builder, "memory_view_spinbutton");
    mem_view_start_address = gtk_spin_button_get_value(GTK_SPIN_BUTTON(object));
    if (this_event->direction == GDK_SCROLL_UP)
        mem_view_start_address += 0x100;
    else
        mem_view_start_address -= 0x100;
    gtk_spin_button_set_value (GTK_SPIN_BUTTON(object), mem_view_start_address);
    print_mem_view();
    return TRUE;
}*/

void on_memory_view_hide_clicked (GtkButton *button, gpointer user_data)
{
    GObject *obj = gtk_builder_get_object(builder, "memory_window");
    gtk_widget_hide(GTK_WIDGET(obj));

    obj = gtk_builder_get_object(builder, "menu_view_memory");
    gtk_widget_set_sensitive(GTK_WIDGET(obj), TRUE);
}

void print_mem_view(void)
{
    char label_content[2048];
    int i, j;
    for (i = 0; i < MEM_VIEW_ROWS; i++)
    {
        char label_name[64];
        sprintf(label_name, "mem_view_data_%d", i);
        GObject *this_label = gtk_builder_get_object(builder, label_name);
        sprintf(label_content, "%04X: ", mem_view_start_address + i * 16);
        for (j = 0; j < 16; j++)
        {
            uint16_t this_addr = mem_view_start_address + i * 16 + j;
            uint8_t this_byte = pt.read_memory(this_addr);
            if (this_byte != mem_view_past[i * 16 + j])
            {
                sprintf(label_content + strlen(label_content),
                        "<span foreground=\"red\">\%02X </span>""",
                        this_byte);
                mem_view_past[i * 16 + j] = this_byte;
            }
            else
                sprintf(label_content + strlen(label_content),
                        "<span foreground=\"black\">\%02X </span>""",
                        this_byte);
        }
        gtk_label_set_markup(GTK_LABEL(this_label), label_content);

        sprintf(label_name, "char_view_%d", i);
        this_label = gtk_builder_get_object(builder, label_name);
        label_content[0] = '\0';
        for (j = 0; j < 16; j++)
        {
            uint16_t this_addr = mem_view_start_address + i * 16 + j;
            uint8_t this_byte = pt.read_memory(this_addr);
            if ((this_byte >= 0x10) && (this_byte < 0x70))
            {
                char str[16];
                switch (sharp_char_map[this_byte - 0x10])
                {
                case '&':
                    sprintf(str, "%s", "&amp;");
                    break;
                case '<':
                    sprintf(str, "%s", "&lt;");
                    break;
                case '>':
                    sprintf(str, "%s", "&gt;");
                    break;
                case '/':
                    sprintf(str, "%s", "&#47;");
                    break;
                case '"':
                    sprintf(str, "%s", "&quot;");
                    break;
                default:
                    sprintf(str, "%c", sharp_char_map[this_byte - 0x10]);
                    break;
                }
                if (this_byte != mem_view_past[i * 16 + j])
                {
                    sprintf(label_content + strlen(label_content),
                            "<span foreground=\"red\">\%s</span>",
                            str);
                    mem_view_past[i * 16 + j] = this_byte;
                }
                else
                    sprintf(label_content + strlen(label_content),
                            "<span foreground=\"black\">\%s</span>",
                            str);
            }
            else
                sprintf(label_content + strlen(label_content),
                        "<span foreground=\"black\">.</span>");
        }
        gtk_label_set_markup(GTK_LABEL(this_label), label_content);
    }
}

void memory_view_startup(void)
{
#if 0
    g_signal_connect(G_OBJECT(object),
                     "change-value",
                     G_CALLBACK(on_memory_view_spinbutton_change_value),
                     NULL);
#endif
}
