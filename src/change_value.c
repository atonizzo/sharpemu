#include <string.h>
#include <stdint.h>
#include <gtk/gtk.h>
#include <sc61860_emu.h>

gboolean change_cancel_button_callback(GtkWidget *widget, gpointer user_data)
{
    GObject *obj = gtk_builder_get_object(builder, "reg_value_window");
    gtk_widget_hide(GTK_WIDGET(obj));
    return TRUE;
}

gboolean change_cancel_ok_callback(GtkWidget *widget, gpointer user_data)
{
    return TRUE;
}

gboolean reg_i_key_press_callback(GtkWidget *widget,
                                  GdkEventButton *event,
                                  gpointer        user_data )
{
    if (event->type != GDK_2BUTTON_PRESS)
        return;

    // First read the current value of the register we want to modify.
    char label_reg[64];
    uint32_t reg_index = (uint32_t)(uint64_t)user_data;
    sprintf(label_reg, "label_reg_%s", reg_to_str[reg_index]);
    GObject *label = gtk_builder_get_object(builder, label_reg);
    const gchar *label_text = gtk_label_get_text(GTK_LABEL(label));
    sprintf(label_reg, "0x%s", label_text);

    // Write the value in the
    GObject *entry = gtk_builder_get_object(builder, "change_value_entry");
    gtk_entry_set_text(GTK_ENTRY(entry), label_reg);

    GObject *obj = gtk_builder_get_object(builder, "reg_value_window");
    gtk_widget_show(GTK_WIDGET(obj));

#if 0
        __break__
    g_print("tony: %lu\r\n", (uint64_t)user_data);
//    char *str = "tony";
//    const char *format = "<span foreground=\"blue\"></span>";
//    char *markup = g_markup_printf_escaped(format);
//    GObject *label_disassembly_title = gtk_builder_get_object(builder, "label_disassembly_title");
//    gtk_label_set_markup (GTK_LABEL(label_disassembly_title), markup);
//    g_free (markup);
#endif
    return TRUE;
}
