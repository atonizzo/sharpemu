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
#include <gtk/gtk.h>

#include <sc61860.h>
#include <sharpemu.h>

uint16_t mem_view_start_address = 0;

#if defined(MODEL_PC1245) || defined(MODEL_PC1250) || defined(MODEL_PC1251) ||\
                                                    defined(MODEL_PC1255)
char sharp_char_map[] =
{
    '.', ' ', '\'', '?', '!', '#', '%', '.',  // 0x10..0x17
    '#', '.', '.', ',', ';', ':', '.', '&',   // 0x18..0x1F
    '.', ' ', '\'', '?', '!', '#', '%', '.',  // 0x20..0x27
    '#', '.', '.', ',', ';', ':', '.', '&',   // 0x28..0x2F
    '(', ')', '>', '<', '=', '+', '-', '*',   // 0x30..0x37
    '/', '^', '.', '.', '.', '.', '.', '.',   // 0x38..0x3F
    '0', '1', '2', '3', '4', '5', '6', '7',   // 0x40..0x47
    '8', '9', '.', '.', '.', '~', '_', ' ',   // 0x48..0x4F
    ' ', 'A', 'B', 'C', 'D', 'E', 'F', 'G',   // 0x50..0x57
    'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',   // 0x58..0x5F
    'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',   // 0x60..0x67
    'X', 'Y', 'Z', '.', '.', '.', '.', '.',   // 0x68..0x6F
};
#endif

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

#if defined(MODEL_PC1245) || defined(MODEL_PC1250) || defined(MODEL_PC1251) ||\
                                                    defined(MODEL_PC1255)
            // PC-1245 through PC-1255 models use proprietary Sharp encoding
            //  for characters.
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
#elif defined(MODEL_PC1260) || defined(MODEL_PC1262)
            // PC-1260 and PC-1262 models use ASCII encoding for characters
            //  likely because the proprietary set used for other models did
            //  not support lowercase characters.
            if ((this_byte >= ' ') && (this_byte <= '~'))
            {
                char str[16];
                switch (this_byte)
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
                    sprintf(str, "%c", this_byte);
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
#else
    #error Model not defined
#endif


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
