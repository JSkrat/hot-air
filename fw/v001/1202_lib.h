#ifndef _1202_LIB_H_INCLUDED
#define _1202_LIB_H_INCLUDED

#include "messages.h"

typedef enum {
    normal = 0,
    inversed = 1,
    invisible = 2,
    huge = 4
} tFontStyle;
/*#define inversed 1
#define normal 0*/

extern void LCD_write_byte(char data, unsigned char cd);
uint8_t lcdMutex;
void lcdInit();
void lcdLocate(uint8_t y, uint8_t x);
void lcdGotoXY(uint8_t x, uint8_t y);
uint8_t lcdPrint(const progmemchar *message, tFontStyle);
void lcdPrintChar(unsigned char symbol, tFontStyle style);
uint8_t lcdRamPrint(const char *message, tFontStyle style);
void lcdClear();

#endif // _1202_LIB_H_INCLUDED
