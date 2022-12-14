#include "messages.h"

const progmemchar m_guntemp[6] PROGMEM = {'F','a','c','t',0x20, cTerm};
const progmemchar m_gundesire[9] PROGMEM = {'D','e','s','i','r','e',':',0x20, cTerm};
const progmemchar m_gunpower[6] PROGMEM = {'G','p','w','r',0x20, cTerm};
const progmemchar m_soldertemp[8] PROGMEM = {'S','o','l',' ','t',':',0x20, cTerm};
const progmemchar m_varsolder[8] PROGMEM = {'V',' ','s','o','l',':',0x20, cTerm};
const progmemchar m_varair[8] PROGMEM = {'V',' ','a','i','r',':',0x20, cTerm};
const progmemchar m_varheat[9] PROGMEM = {'V',' ','h','e','a','t',':',0x20, cTerm};
const progmemchar m_periodlen[9] PROGMEM = {'P','e','r','i','o','d',':',0x20, cTerm};
const progmemchar m_btnUp[5] PROGMEM = {0x20, 'U','p',0x20, cTerm};
const progmemchar m_btnDown[5] PROGMEM = {'D','o','w','n',cTerm};
const progmemchar m_btnOk[5] PROGMEM = {0x20, 'O','k',0x20, cTerm};
const progmemchar m_btnEsc[5] PROGMEM = {'E','s','c',0x20, cTerm};
const progmemchar m_btnNone[5] PROGMEM = {0x20, 0x20, 0x20, 0x20, cTerm};
const progmemchar m_ocra[7] PROGMEM = {'O','C','R','1','A',0x20, cTerm};
const progmemchar m_GHI[5] PROGMEM = {'G','H','I',0x20, cTerm};
const progmemchar m_GHD[5] PROGMEM = {'G','H','D',0x20, cTerm};
const progmemchar m_GHP[5] PROGMEM = {'G','H','P',0x20, cTerm};
const progmemchar m_GHErr[5] PROGMEM = {'G','H','E',0x20, cTerm};
const progmemchar m_GHFact[3] PROGMEM = {'G','H',cTerm};
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
