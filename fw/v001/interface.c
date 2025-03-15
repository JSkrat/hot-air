#include <stdbool.h>
#include "interface.h"
#include "my-stdlib.h"
#include "1202_lib.h"
#include "main.h"

#define MAINSCREEN 0
#define MENUSCREEN 1
const tScreen Screen[] PROGMEM = {
    MainScreen,
    MenuScreen
};
uint8_t currentScreen = MAINSCREEN;
bool ShowDebugInfo = false;
uint8_t menuTimeout = 5; // sec
int16_t idleTime = 0;
bool clearLCDBeforeMain = false;
bool drawGraphic = false; // signal for main screen to update graphic
uint8_t graphicX = 0;
// в два раза больше, полупериод 200мс
#define blink200_MAX 12
uint8_t blink200 = 0;

const tMenuItem const settingsItems[] PROGMEM = {
    { text: m_mMenuShutdown,    ptr: &GunShutdownMode,                  type: mtBoolean},
    { text: m_mDebug,           ptr: &ShowDebugInfo,                    type: mtBoolean},
    { text: m_mMenuTimeout,     ptr: &menuTimeout,                      type: mtUInteger},
    { text: m_mGHIntegral,      ptr: &ee_settings[eeGHIntegral],        type: mtFExponential},
    { text: m_mGHProportional,  ptr: &ee_settings[eeGHProportional],    type: mtFExponential},
    { text: m_mGHDerivative,    ptr: &ee_settings[eeGHDerivative],      type: mtFExponential},
    { text: m_mMode,            ptr: &GunFeedbackMode,                  type: mtBoolean}
};
const tMenu settings PROGMEM = {
    length: sizeof(settingsItems)/sizeof(settingsItems[0]),
    items: settingsItems
};

mPointer mStack[MSTACK_SIZE] = {
    {
        index: 0,
        menu: &settings
    }
};
int8_t mStackPointer = 0;

/*const tMenuItem const integerItems[] PROGMEM = {
    { text: 0,       ptr: 0,       type: mtBoolean},
    { text: m_smInc, ptr: 0, type: mtFunction}
};
const tMenu integer PROGMEM = {
    length: sizeof(integerItems)/sizeof(integerItems[0]),
    parent: 0,
    items: integerItems
};*/

float power10(int8_t power) {
    float ret = 1, exp;
    if (0 < power) exp = 10;
    else {
        exp = 1/10;
        power = -power;
    }
    for (int i = 0; i < power; i++) {
        ret *= exp;
    }
    return ret;
}

uint8_t printExp(float f, tFontStyle style) {
    uint8_t printed = 0;
    if (((float_cast) f).parts.sign) lcdPrintChar('-', style); printed++;
    int8_t exp = (((float_cast) f).parts.exponent - 127) / 3.32192809; // binary exp divided by log_2(10)
    uint8_t mantisa = f / power10(exp);
    printed += lcdRamPrint(Str(mantisa), style);
    lcdPrintChar('E', style); printed++;
    printed += lcdRamPrint(Str(exp), style);
    return printed;
}

void DrawScreen() {
    tScreen scr = pgm_read_ptr(&Screen[currentScreen]);
    scr();
}

void InterfaceTimer() { // 30.5 Hz
    if (0 < idleTime) {
        idleTime--;
        if (0 == idleTime) {
            currentScreen = MAINSCREEN;
            clearLCDBeforeMain = true;
        }
    }
    if (blink200_MAX <= blink200++) blink200 = 0;
}

void Interface(ibutton event) {
    // reset screensaver timeout
    currentScreen = MENUSCREEN;
    idleTime = 30.5 * menuTimeout;

    mPointer *mStackCurrent = &mStack[mStackPointer]; // SRAM
    const tMenu* mCurrent = mStackCurrent->menu; // PROGMEM
    const uint8_t length = pgm_read_byte(&mCurrent->length);
    switch(event) {
        case ibutDown:
            if (length-1 > mStackCurrent->index) mStackCurrent->index++;
            break;
        case ibutUp:
            if (0 < mStackCurrent->index) mStackCurrent->index--;
            break;
        case ibutEsc:;
            if (0 == mStackPointer) {
                // turn "screensaver" on
                idleTime = 1;
            } else {
                mStackPointer--;
            }
            break;
        case ibutOk:;
            // тут кастовать обязательно, иначе прибавляется индекс, не помноженый на размер структуры
            const tMenuItem* menuitem = (tMenuItem*)pgm_read_ptr(&mCurrent->items) + mStackCurrent->index;
            const void* ptr = pgm_read_ptr(&menuitem->ptr);
            switch ((enum tMenuType) pgm_read_word(&menuitem->type)) {
            case mtMenu:;
                mStackPointer++;
                mStack[mStackPointer].index = 0;
                mStack[mStackPointer].menu = ptr;
                break;
            case mtBoolean:;
                *(bool*)ptr = ! *(bool*)ptr;
                break;
            default:;
            }
            break;
        default:;
    }
}

void MainScreen() {
    if (clearLCDBeforeMain) {
        clearLCDBeforeMain = false;
        lcdClear();
    }
    lcdLocate(0, 0);
    lcdPrint(m_gundesire, normal);
    if (ShowDebugInfo) {
        lcdPrintChar(0x20, normal); lcdRamPrint(Str(GunTempSum / GunTemps_size), normal); lcdPrintChar(0x20, normal);
    }

    lcdLocate(1, 0);
    uint16_t temp = GunTemp(smoothGunHeat);
    if (1024 < temp) temp = 0;
    if (100 > temp) lcdPrintChar(0x20, huge);
    lcdRamPrint(Str(temp), huge); lcdPrintChar(0x20, huge); //lcdPrintChar(cCelsius, normal); lcdPrintChar(0x20, normal);

    lcdLocate(0, 12);
    lcdPrint(m_guntemp, normal);

    lcdLocate(1, 10);
    if (100 > GunTemp(smoothGunTemp)) lcdPrintChar(0x20, huge);
    lcdRamPrint(Str(GunTemp(smoothGunTemp)), huge); lcdPrintChar(0x20, huge); //lcdPrintChar(cCelsius, normal); lcdPrintChar(0x20, normal);

    if (ShowDebugInfo) {
        lcdLocate(3, 0);
        lcdPrint(m_ocra, normal);
        lcdRamPrint(Str(OCR1A), normal); lcdPrintChar(0x20, normal);
    }

    tFontStyle style = invisible;
    if (GunShutdownMode && (blink200 > blink200_MAX/2 || ShutdownCoolTimeout <= GunShutdownCoolTimeout)) {
        style = normal;
    }
    if (ShowDebugInfo) {
        lcdLocate(4, 0);
        lcdPrint(m_mMenuShutdown, style);
        lcdRamPrint(Str(GunShutdownCoolTimeout >> 16), style);
    } else {
        lcdLocate(4, 2);
        lcdPrint(m_mMenuShutdown, style);
    }

    lcdLocate(5, 3);
    lcdPrint(m_power, normal);
    if (! GunFeedbackMode) {
        lcdPrint(m_manual, normal);
    }
    lcdPrintChar(0x20, normal);
    lcdRamPrint(SStr(GunHeatPower), normal);
    if (GunFeedbackMode || GunHeatPower < 1000) lcdPrintChar(0x20, normal);
    if (drawGraphic) {
        drawGraphic = false;
        #define GRAPH_HEIGHT 20
        uint8_t shift = GRAPH_HEIGHT - GunHeatPower * GRAPH_HEIGHT / PowerMax;
        uint32_t graphicY = ((uint32_t) -1 << shift);
        lcdGotoXY(graphicX, 6);
        uint8_t dottedBorder = (graphicX % 3 == 0)? 1: 0;
        LCD_write_byte((graphicY & 0xFF) | dottedBorder, 1);
        LCD_write_byte(0xFF, 1); LCD_write_byte(0xFF, 1);
        lcdGotoXY(graphicX, 7);
        LCD_write_byte((graphicY >> 8) & 0xFF, 1);
        LCD_write_byte(0xFF, 1); LCD_write_byte(0xFF, 1);
        lcdGotoXY(graphicX++, 8);
        LCD_write_byte((graphicY >> 16) & 0xFF, 1);
        if (graphicX >= LCD_WIDTH) {
            graphicX = 0;
        } else {
            LCD_write_byte(0xFF, 1); LCD_write_byte(0xFF, 1);
        }
    }
}

// i don't like that function. but it works
void MenuScreen() {
    //#pragma message ("LCD_ROWS: " STR(LCD_ROWS))
    #define MIDSCREEN CEILING(LCD_ROWS, 2)
    const uint8_t index = mStack[mStackPointer].index;
    int8_t offset = index - (MIDSCREEN - 1);
    const uint8_t length = pgm_read_byte(&mStack[mStackPointer].menu->length);
    if (length < offset + LCD_ROWS) offset = length - LCD_ROWS;
    if (0 > offset) offset = 0;
    const tMenuItem* mCurrent = pgm_read_ptr(&mStack[mStackPointer].menu->items);
    for (int8_t row = 0; row < LCD_ROWS; row++) {
        lcdLocate(row, 0);
        if (row+offset < length) {
            const void* ptr = pgm_read_ptr(&mCurrent[offset+row].ptr);
            const enum tMenuType type = pgm_read_word(&mCurrent[offset+row].type);
            tFontStyle style = (row+offset == index)? inversed: normal;
            uint8_t printed = lcdPrint(pgm_read_ptr(&mCurrent[offset+row].text), style);
            // print additional values
            switch (type) {
            case mtBoolean:;
                if (*(bool*) ptr) {
                    lcdPrintChar(cCheck, style);
                    printed++;
                }
            break;
            case mtUInteger:;
                printed += lcdRamPrint(Str(*(uint8_t*) ptr), style);
            break;
            case mtFExponential:;
            case mtFloat:;
                printed += printExp(*(float*) ptr, style);
            break;
            default:;
            }
            for (uint8_t col = printed; col < LCD_COLUMNS; col++) lcdPrintChar(' ', style);
        } else {
            // заполнить строчку пустотой
            for (int8_t col = 0; col < LCD_WIDTH; col++) {
                LCD_write_byte(0, 1);
            }
        }
    }
}
