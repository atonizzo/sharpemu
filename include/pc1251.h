#ifndef __PC1251_H__
#define __PC1251_H__

#define LCD_CHARACTER_ROWS              1
#define LCD_CHARACTER_PER_ROW           24
#define LCD_COLUMNS_PER_CHARACTER       5
#define LCD_PIXEL_PER_COLUMN            7

extern GtkWidget *lcd_display[LCD_CHARACTER_ROWS][LCD_CHARACTER_PER_ROW]
                            [LCD_COLUMNS_PER_CHARACTER][LCD_PIXEL_PER_COLUMN];

#define LCD_LABEL_DEF                   0
#define LCD_LABEL_PRO                   1
#define LCD_LABEL_RUN                   2
#define LCD_LABEL_RESERVE               3
#define LCD_LABEL_DE                    4
#define LCD_LABEL_GRAD                  5
#define LCD_LABEL_P                     6
#define LCD_LABEL_BUSY                  7
#define LCD_LABEL_SHIFT                 9
#define LCD_LABEL_E                     14

extern label_layout_t lcd_labels[15];

#endif

