#include "my-stdlib.h"
#include "main.h"
#include "messages.h"

char* Str(uint16_t value) {
    char* pointer = m_temp + 6; // на 16-бит максимум 5 разрядов, плюс Z-терминатор, плюс место для знака (SStr)
    *(--pointer) = cTerm;
    if (value == 0) {
        *(--pointer) = '0';
    } else while (value > 0) {
        *(--pointer) = '0' + value % 10;
        value /= 10;
    }
    return pointer;
}

char* SStr(int16_t value) {
    char* pointer;
    if (value < 0) {
        pointer = Str(-value);
        *(--pointer) = '-'; // Str нам оставила один байт перед
    } else {
        pointer = Str(value);
    }
    return pointer;
}

char* StrLen(uint8_t value, uint8_t len) {
    char* pointer = m_temp + len + 1;
    *(--pointer) = cTerm;
    while (len-- > 0) {
        *(--pointer) = '0' + value % 10;
        value /= 10;
    }
    return pointer;
}

char* Hex(uint8_t value) {
    char* alph = "0123456789ABCDEF";
    char* pointer = m_temp;
    *(pointer++) = alph[value >> 4];
    *(pointer++) = alph[value & 0x0F];
    *(pointer) = cTerm;
    return m_temp;
}

char* Hex16(uint16_t value) {
    char* lower = Hex(value & 0x00FF);
    lower[4] = lower[2];
    lower[3] = lower[1];
    char zero = lower[0];
    Hex(value >> 8);
    lower[2] = zero;
    return m_temp;
}
