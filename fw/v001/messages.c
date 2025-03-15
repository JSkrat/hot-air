#include "messages.h"

const progmemchar m_guntemp[5] PROGMEM = {'F','a','c','t',cTerm};
const progmemchar m_gundesire[7] PROGMEM = {'D','e','s','i','r','e',cTerm};
const progmemchar m_btnUp[5] PROGMEM = {0x20, 'U','p',0x20, cTerm};
const progmemchar m_btnDown[5] PROGMEM = {'D','o','w','n',cTerm};
const progmemchar m_btnOk[5] PROGMEM = {0x20, 'O','k',0x20, cTerm};
const progmemchar m_btnEsc[5] PROGMEM = {'E','s','c',0x20, cTerm};
const progmemchar m_btnNone[5] PROGMEM = {0x20, 0x20, 0x20, 0x20, cTerm};
const progmemchar m_ocra[7] PROGMEM = {'O','C','R','1','A',0x20, cTerm};
const progmemchar m_power[6] PROGMEM = {'P','o','w','e','r',cTerm};
const progmemchar m_manual[4] PROGMEM = {'(','m',')',cTerm};
const progmemchar m_mGHIntegral[9] PROGMEM = {'P','I','D',' ','G','H',' ','I',cTerm};
const progmemchar m_mGHProportional[9] PROGMEM = {'P','I','D',' ','G','H',' ','P',cTerm};
const progmemchar m_mGHDerivative[9] PROGMEM = {'P','I','D',' ','G','H',' ','D',cTerm};
const progmemchar m_mMode[15] PROGMEM = {'H','e','a','t',' ','f','e','e','d','b','a','c','k',0x20, cTerm};
const progmemchar m_mMenuTimeout[14] PROGMEM = {'M','e','n','u',' ','t','i','m','e','o','u','t',0x20, cTerm};
const progmemchar m_mMenuShutdown[14] PROGMEM = {'S','h','u','t','d','o','w','n',' ','a','i','r',0x20, cTerm};
const progmemchar m_mDebug[12] PROGMEM = {'D','e','b','u','g',' ','i','n','f','o',0x20, cTerm};
const progmemchar m_smInc[3] PROGMEM = {'+','1',cTerm};
const progmemchar m_smDec[3] PROGMEM = {'-','1',cTerm};
const progmemchar m_smInc10[4] PROGMEM = {'+','1','0',cTerm};
const progmemchar m_smDec10[4] PROGMEM = {'-','1','0',cTerm};
const progmemchar m_smCancel[7] PROGMEM = {'c','a','n','c','e','l',cTerm};
