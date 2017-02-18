#include <stdint.h>
#include <string.h>
#include <gtk/gtk.h>
#include <sc61860_emu.h>

uint16_t mem_view_start_address = 0;

char sharp_char_map[] =
{
    '.', ' ', '\'', '?', '!', '#', '%', '.',
    '#', '.', '.', ',', ';', ':', '.', '&',
    '.', '.', '.', '.', '.', '.', '.', '.',
    '.', '.', '.', '.', '.', '.', '.', '.',
    '(', ')', '>', '<', '=', '+', '-', '*',
    '/', '^', '.', '.', '.', '.', '.', '.',
    '0', '1', '2', '3', '4', '5', '6', '7',
    '8', '9', '.', '.', '.', '~', '_', ' ',
    ' ', 'A', 'B', 'C', 'D', 'E', 'F', 'G',
    'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',
    'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
    'X', 'Y', 'Z', '.', '.', '.', '.', '.',
};

static gboolean memory_view_scrollbar_adjust(GtkRange *range,
                                             gdouble   value,
                                             gpointer  user_data )
{
    g_print("adjust\r\n");
}

static gboolean memory_view_spinbutton_change(GtkRange      *range,
                                             GtkScrollType  scroll,
                                             gdouble        value,
                                             gpointer       user_data )
{
    g_print("change\r\n");
}

static gboolean memory_view_spinbutton_value(GtkRange        *range,
                                             GtkScrollType  step,
                                             gpointer       user_data )
{
    g_print("move\r\n");
}



static gboolean memory_view_spinbutton_clicked(GtkSpinButton *range,
                                               gpointer       user_data )
{
    GObject *object = gtk_builder_get_object(builder, "memory_view_spinbutton");
    mem_view_start_address = gtk_spin_button_get_value(GTK_SPIN_BUTTON(object));
    print_mem_view();
}

void print_mem_view(void)
{
    char label_content[2048];
    char *format, *markup;
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
            uint8_t this_byte = pt[personality].read_memory(this_addr);
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
            uint8_t this_byte = pt[personality].read_memory(this_addr);
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
/*    GtkWidget *window;
    GtkWidget *label;
    GtkWidget *grid;
    GtkWidget *spin_button;
    adjustment;*/

    GObject *object = gtk_builder_get_object(builder, "memory_view_spinbutton");

    // Create an adjustment representing an adjustable bounded value
    GtkAdjustment *adjustment = gtk_adjustment_new (0, 0, 65535, 256, 0, 0);
    gtk_spin_button_set_adjustment(GTK_SPIN_BUTTON(object), adjustment);

    // Create a spin button that is to be as wide as possible
    //spin_button = gtk_spin_button_new (adjustment, 1, 0);
    //  gtk_widget_set_hexpand (spin_button, TRUE);

//    gtk_spin_button_set_range(GTK_SPINBUTTON(object), 0, 65535);
    g_signal_connect(G_OBJECT(object),
                     "change-value",
                     G_CALLBACK(memory_view_spinbutton_change),
                     NULL);
    g_signal_connect(G_OBJECT(object),
                     "value-changed",
                     G_CALLBACK(memory_view_spinbutton_clicked),
                     NULL);
/*    g_signal_connect(G_OBJECT(memory_view_window),
                     "move-slider",
                     G_CALLBACK(memory_view_scrollbar_move),
                     NULL);
    g_signal_connect(G_OBJECT(memory_view_window),
                     "adjust-bounds",
                     G_CALLBACK(memory_view_scrollbar_adjust),
                     NULL);*/
}
