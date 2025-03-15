#ifndef INTERFACE_H_INCLUDED
#define INTERFACE_H_INCLUDED

#include <stdbool.h>
#include "messages.h"

// settings menu
enum tMenuType { // почему-то 2 байта занимает
    mtFloat,
    mtMenu,
    mtBoolean,
    mtFunction,
    mtUInteger,
    mtFExponential
};
typedef struct {
    const progmemchar* text;
    void *ptr;
    enum tMenuType type;
} tMenuItem;

struct stMenu {
    const tMenuItem *items;
    uint8_t length;
    //const struct stMenu *parent;
};
typedef struct stMenu tMenu;

typedef struct {
    const tMenu *menu;
    uint8_t index;
} mPointer;
#define MSTACK_SIZE 8
mPointer mStack[MSTACK_SIZE];
int8_t mStackPointer;

typedef enum {
    ibutNone,
    ibutOk,
    ibutEsc,
    ibutUp,
    ibutDown
} ibutton;
#define buttons     5

typedef union {
  float f;
  struct {
    uint32_t mantisa : 23;
    uint8_t exponent : 8;
    uint8_t sign : 1;
  } parts;
} float_cast;

typedef void (*tScreen)();
const tScreen Screen[2];
void DrawScreen();
void InterfaceTimer();
void Interface(ibutton event);
void MainScreen();
void MenuScreen();

const tMenu settings;
mPointer mStack[MSTACK_SIZE];
int8_t mStackPointer;

bool drawGraphic;

#endif // INTERFACE_H_INCLUDED
