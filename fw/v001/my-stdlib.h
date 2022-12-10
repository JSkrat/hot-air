#ifndef MY_STDLIB_H_INCLUDED
#define MY_STDLIB_H_INCLUDED
#include <inttypes.h>

char* Str(uint16_t value);
char* SStr(int16_t value);
char* StrLen(uint8_t value, uint8_t len);
char* Hex(uint8_t value);
char* Hex16(uint16_t);

#endif // MY_STDLIB_H_INCLUDED
