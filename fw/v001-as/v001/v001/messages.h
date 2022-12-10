#ifndef MESSAGES_H_INCLUDED
#define MESSAGES_H_INCLUDED

#include <avr/pgmspace.h>

typedef unsigned char progmemchar;
#define cTerm    16
#define cCheck   94
#define cCelsius 96

extern const progmemchar m_guntemp[6] PROGMEM;
extern const progmemchar m_gundesire[9] PROGMEM;
extern const progmemchar m_gunpower[6] PROGMEM;
extern const progmemchar m_soldertemp[8] PROGMEM;
extern const progmemchar m_varsolder[8] PROGMEM;
extern const progmemchar m_varair[8] PROGMEM;
extern const progmemchar m_varheat[9] PROGMEM;
extern const progmemchar m_periodlen[9] PROGMEM;
extern const progmemchar m_btnUp[5] PROGMEM;
extern const progmemchar m_btnDown[5] PROGMEM;
extern const progmemchar m_btnOk[5] PROGMEM;
extern const progmemchar m_btnEsc[5] PROGMEM;
extern const progmemchar m_btnNone[5] PROGMEM;
extern const progmemchar m_ocra[7] PROGMEM;
extern const progmemchar m_GHI[5] PROGMEM;
extern const progmemchar m_GHD[5] PROGMEM;
extern const progmemchar m_GHP[5] PROGMEM;
extern const progmemchar m_GHErr[5] PROGMEM;
extern const progmemchar m_GHFact[3] PROGMEM;
extern const progmemchar m_power[6] PROGMEM;
extern const progmemchar m_manual[4] PROGMEM;
extern const progmemchar m_mGHIntegral[9] PROGMEM;
extern const progmemchar m_mGHProportional[9] PROGMEM;
extern const progmemchar m_mGHDerivative[9] PROGMEM;
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
