#ifndef MESSAGES_H_INCLUDED
#define MESSAGES_H_INCLUDED

#include <avr/pgmspace.h>

typedef unsigned char progmemchar;
#define cTerm    16
#define cCheck   94
#define cCelsius 96

extern const progmemchar m_guntemp[5] PROGMEM;
extern const progmemchar m_gundesire[7] PROGMEM;
extern const progmemchar m_btnUp[5] PROGMEM;
extern const progmemchar m_btnDown[5] PROGMEM;
extern const progmemchar m_btnOk[5] PROGMEM;
extern const progmemchar m_btnEsc[5] PROGMEM;
extern const progmemchar m_btnNone[5] PROGMEM;
extern const progmemchar m_ocra[7] PROGMEM;
extern const progmemchar m_power[6] PROGMEM;
extern const progmemchar m_manual[4] PROGMEM;
extern const progmemchar m_mGHIntegral[10] PROGMEM;
extern const progmemchar m_mGHProportional[10] PROGMEM;
extern const progmemchar m_mGHDerivative[10] PROGMEM;
extern const progmemchar m_mMode[15] PROGMEM;
extern const progmemchar m_mMenuTimeout[14] PROGMEM;
extern const progmemchar m_mMenuShutdown[14] PROGMEM;
extern const progmemchar m_mDebug[12] PROGMEM;
extern const progmemchar m_smInc[3] PROGMEM;
extern const progmemchar m_smDec[3] PROGMEM;
extern const progmemchar m_smInc10[4] PROGMEM;
extern const progmemchar m_smDec10[4] PROGMEM;
extern const progmemchar m_smCancel[7] PROGMEM;

#endif // MESSAGES_H_INCLUDED
