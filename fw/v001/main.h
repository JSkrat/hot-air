#ifndef MAIN_H_INCLUDED
#define MAIN_H_INCLUDED

#include "defines.h"
#include <inttypes.h>
#include "interface.h"

uint16_t GunTemp(uint16_t);
float GunPower(float);

// Глобальные переменные (RAM)
// среднее количество тактов TIMER1 за полупериод переменного тока (теоретическое значение 10'000)
uint16_t PeriodLen;
uint32_t PeriodsSum;
uint8_t iAvPeriodLen;
#define PeriodLenghts_size 32
uint16_t PeriodLenghts[PeriodLenghts_size];

// номер пина для скана ADC
uint8_t sADMUX;

// положения регуляторов
uint16_t wVarSolder;
uint8_t VarGunAir;
uint16_t VarGunHeat;

// PID gun heat
float GHIntegral;
float GHDerivative;

// buffer for ocr1a/b
float GunHeatPower; /**< 0 - PowerMax */
uint16_t wSolderTime;

// значения температуры с датчиков
uint8_t GunTempI;
uint16_t GunTempSum; // 10 bit ADC + log_2(32) bit len = 15bit
#define GunTemps_size 8
uint16_t GunTemps[GunTemps_size];
uint8_t GunTempsSort[GunTemps_size];
uint8_t bDSolderTemp;

// сглаживание показаний во времени, для интерфейса
uint16_t smoothGunHeat, smoothGunTemp;

// temporary string (function output for example)
char m_temp[8];

// eeprom settings
uint8_t ee_settings[eeSettingsSize];

bool GunFeedbackMode;
bool GunShutdownMode;
uint32_t GunShutdownCoolTimeout;

typedef struct {
    unsigned int power :7;
    unsigned int state :1;
} tButton;

tButton Buttons[buttons];

#endif // MAIN_H_INCLUDED
