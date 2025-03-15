/*
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/sleep.h>
#include <avr/eeprom.h>
#include <util/delay.h>
#include <stdbool.h>
#include "main.h"
#include "my-stdlib.h"
#include "messages.h"
#include "interface.h"
#include "1202_lib.h"

uint16_t PeriodLen = 0;
uint8_t sADMUX = admFirst;
uint8_t bVarSolder = 0;
uint8_t VarGunAir = 0;
uint8_t bVarGunHeat = 0;
uint16_t wDGunTemp = 0;
uint8_t bDSolderTemp = 0;
// сглаживание показаний во времени, для интерфейса
#define smooth_cnt 160
uint32_t gunheat_sum = 0, guntemp_sum = 0;
uint8_t gunheat_cnt = 0, guntemp_cnt = 0;

const uint16_t x[] PROGMEM = {0,         8,         24,        50,        144,       879,       973,       999,       1015};
const float k[]    PROGMEM = {-0.007043, -0.002594, -0.001692, -0.001094, -0.000693, -0.001089, -0.001669, -0.002507, -0.004984};
const float b[]    PROGMEM = {1.0,       0.964409,  0.942767,  0.912873,  0.855141,  1.202471,  1.767431,  2.604264,  5.118694};

uint16_t GunTemp(uint16_t thermocouple) {
    float t = (float) thermocouple;
    return 0.4175262*t + 50.27458766;
}

/** @brief convert power to actual OCR1 value through arccos
 *
 * @param float power (0..1023)
 * @return float OCR1/Period value (0..1)
 *
 */
float GunPower(float power) {
    // ограничение на верхнее значение
    if (1023.0 < power) power = 1023.0;
    if (0.0 > power) power = 0.0;
    uint8_t i;
    for (i = 0; i < sizeof(x)/sizeof(x[0]); i++) {
        if (power < pgm_read_word(x+i)) {
            break;
        }
    }
    i--;
    return power * pgm_read_float(k+i) + pgm_read_float(b+i);
}

void DeRattling(ibutton event) {
    for (uint8_t i = 0; i < buttons; i++) {
        // decrease everything, but increase fired button
        if (0 == Buttons[i].power) {
            Buttons[i].state = 0;
        } else {
            Buttons[i].power--;
        }
        if (event == i && ibutNone != i) {
            // compensate decay
            Buttons[i].power++;
            if (derattling > Buttons[i].power) {
                Buttons[i].power++;
            } else if (0 == Buttons[i].state) {
                Buttons[i].state = 1;
                Interface(event);
            }
        }
    }
}
// ============================================================================
void ReadEeprom() {
    for (uint16_t i = 0; i < eeSettingsSize; i++) {
        ee_settings[i] = eeprom_read_byte((uint8_t*) i);
    }
}
// ============================================================================
// TODO: выровнять положения регуляторов, пусть шкала будет более-менее равномерной
// 62.5kHz/13 = 4,8kHz, каждые 128*13=1664 тактов
ISR(ADC_vect) {
    uint16_t wadc = ADCL >> 6;
    uint8_t adc = ADCH;
    wadc |= adc << 2;

    // 10.4kHz/13 = 800Hz per read
    switch (sADMUX) {
    case admGunTemp: // термопара в фене
        if (GunTemps_size <= ++GunTempI) GunTempI = 0;
        //GunTempSum -= GunTemps[GunTempI];
        uint16_t old = GunTemps[GunTempI];
        uint16_t cur = wadc;
        GunTemps[GunTempI] = cur;
        //GunTempSum += GunTemps[GunTempI];

        // keep the array of "pointers" to values in circular buffer sorted, it is easier than resort whole buffer each cycle
        // search for previous position of the current element
        int GunTempSortI;
        for (GunTempSortI = 0; GunTempSortI < GunTemps_size; GunTempSortI++) {
            if (GunTempsSort[GunTempSortI] == GunTempI) break;
        }
        if (old < cur) {
            // move element up to highers
            for (; GunTempSortI < GunTemps_size-1; GunTempSortI++) {
                if (GunTemps[GunTempsSort[GunTempSortI+1]] < cur) {
                    uint8_t up = GunTempsSort[GunTempSortI+1];
                    GunTempsSort[GunTempSortI+1] = GunTempsSort[GunTempSortI];
                    GunTempsSort[GunTempSortI] = up;
                } else {
                    break;
                }
            }
        } else if (old > cur) {
            // move element down to lowers
            for (; GunTempSortI > 1; GunTempSortI--) {
                if (GunTemps[GunTempsSort[GunTempSortI-1]] > cur) {
                    uint8_t down = GunTempsSort[GunTempSortI-1];
                    GunTempsSort[GunTempSortI-1] = GunTempsSort[GunTempSortI];
                    GunTempsSort[GunTempSortI] = down;
                } else {
                    break;
                }
            }
        } else {
            // do nothing :>
        }
        // the median filter itself)
        smoothGunTemp = GunTemps[GunTempsSort[GunTemps_size/2]];

        //guntemp_sum += GunTempSum / GunTemps_size;
        //if (++guntemp_cnt >= smooth_cnt) {
        //    smoothGunTemp = guntemp_sum / smooth_cnt;
        //    guntemp_sum = 0;
        //    guntemp_cnt = 0;
        //}
    break;
    case admSolderTemp: // термопара в паяльнике
        bDSolderTemp = adc;
    break;
    case admVarSolder: // регулятор температуры паяльника
        wVarSolder = wadc;
    break;
    case admVarGunAir: // регулятор потока воздуха
        VarGunAir = adc;
    break;
    case admVarGunHeat: // регулятор температуры фена
        #define GUNHEAT_COR 0
        VarGunHeat = (wadc * GunHeatK) + GUNHEAT_COR;
        gunheat_sum += VarGunHeat;
        if (++gunheat_cnt >= smooth_cnt) {
            smoothGunHeat = gunheat_sum/smooth_cnt;
            gunheat_sum = 0;
            gunheat_cnt = 0;
        }
    break;
    case admButtons:
        switch (adc) {
        case butOk - butDelta ... butOk + butDelta:
            DeRattling(ibutOk);
        break;
        case butEsc - butDelta ... butEsc + butDelta:
            DeRattling(ibutEsc);
        break;
        case butUp - butDelta ... butUp + butDelta:
            DeRattling(ibutUp);
        break;
        case butDown - butDelta ... butDown + butDelta:
            DeRattling(ibutDown);
        break;
        default:
            DeRattling(ibutNone);
        break;
        }
    break;
    }
    // scan next pin
    ADMUX &= ~((1 << MUX3) | (1 << MUX2) | (1 << MUX1) | (1 << MUX0));
    if (++sADMUX > admLast) sADMUX = admFirst;
    ADMUX |= sADMUX;
    // start new conversion
    ADCSRA |= (1 << ADSC);
}

ISR(INT0_vect) {
    // вызывается в момент пересечения нуля 50Гц (±20В) (10мс)
    // инициируем начало нового (полу-)периода
    // теоретическое значение wPeriodLen 10'000 (0x2710)
    uint16_t cnt = TCNT1;
    // force timer 1 overflow
    TCNT1 = -1;
    // close all opened simistors
    portOpto &= ~((1 << poGunHeat) | (1 << poSolder));
    // cancel TIMER1_COMPA interrupt, if it is pending
    TIFR1 = (1 << OCF1A) | (1 << OCF1B);
    // count average period
    if (++iAvPeriodLen >= PeriodLenghts_size) iAvPeriodLen = 0;
    PeriodsSum -= PeriodLenghts[iAvPeriodLen];
    PeriodLenghts[iAvPeriodLen] = cnt;
    PeriodsSum += PeriodLenghts[iAvPeriodLen];
    PeriodLen = PeriodsSum / PeriodLenghts_size;
    // count new OCR1A
    if (GunShutdownMode) {
        // для красоты. для графика.
        GunHeatPower = 0;
    } else {
        if (GunFeedbackMode) {
            // PID
            uint16_t fact = smoothGunTemp;
            int16_t delta = VarGunHeat - fact;
            GHIntegral += IntegralK * (float) delta;
            if (PowerMax < GHIntegral) GHIntegral = PowerMax;
            if (0 > GHIntegral) GHIntegral = 0;
            GunHeatPower = GHIntegral + ProportionalK * (float) delta - DerivativeK * (fact - GHDerivative);
            GHDerivative = fact;
        } else {
            GunHeatPower = VarGunHeat - GUNHEAT_COR;
        }
    }
    OCR1A = GunPower(GunHeatPower) * PeriodLen;
    //OCR1B = wSolderTime;
    // allow to draw another point of graphic
    drawGraphic = true;
}

// управление нагревателями (надо было подключать оптопары к другим пинам, щитоподелать)
ISR(TIMER1_COMPA_vect) {
    // управление феном
    if (! GunShutdownMode)
        portOpto |= (1 << poGunHeat);
}

// turned off
ISR(TIMER1_COMPB_vect) {
    // управление паяльником
    portOpto |=  (1 << poSolder);
}

ISR(TIMER0_OVF_vect) {
    InterfaceTimer();
}

ISR(TIMER2_OVF_vect) {
    // update gun air
    if (! GunShutdownMode) {
        OCR2A = (MinimalAir > VarGunAir)? MinimalAir: VarGunAir;
        GunShutdownCoolTimeout = 0;
    } else {
        // shutdown sequence
        if (TemperatureAmbient < (smoothGunTemp)) { // wait until thermocouple thinks that air has ambient temperature
            GunShutdownCoolTimeout = 0;
            OCR2A = 0xFF;
        } else { // when air has ambient temperature or lower run timeout
            if (ShutdownCoolTimeout > GunShutdownCoolTimeout) {
                GunShutdownCoolTimeout++;
                OCR2A = 0xFF;
            } else {
                // full stop
                OCR2A = 0;
            }
        }
    }
}

ISR(BADISR_vect, ISR_NAKED) {
    // ничего здесь нет
}

int main(void) {
    // Initialization
    // компаратор нафиг
    ACSR = (1 << ACD);

    // детектор начала полупериода
    EI_CONTROL = (1 << ISC01) | (1 << ISC00); // rising edge
    EI_MASK = (1 << INT0); // enable

    // ADC
    // Aref source is AVcc with external capacitor
    // left adjust result
    ADMUX = (0 << REFS1) | (1 << REFS0) | (1 << ADLAR);
    // ADC clock is XTAL/128 (62.5 kHz)
    ADCSRA = (1 << ADEN) | (1 << ADSC) | (1 << ADIE) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);

    // pump timer2 initialization
    // phase correct PWM, auto toggle OC2A, clk_io / 1 (PWM period 15.625kHz)
    TC2A_CONTROL |= (0 << WGM21) | (1 << WGM20) | (1 << COM2A1) | (0 << COM2A0);
    TC2B_CONTROL |= (0 << CS22) | (0 << CS21) | (1 << CS20);
    // OC2 should be set as output
    DDRB = (1 << poLCD_PWR) | (1 << poGunHeat) | (1 << poGunAir) | (1 << poDebugB6) | (1 << poDebugB7);
    DDRD = (0 << piPhaseDetector) | (0 << piGunIdle) | (1 << poLCD_RST) | (1 << poLCD_CS) | (1 << poLCD_DATA) | (1 << poLCD_CLK) | (1 << poDebugD0) | (1 << poDebugD1);

    // timer1 initialization (heat elements)
    // T1 normal operational mode (top 0xFFFF)
    TCCR1B = (0 << CS12) | (1 << CS11) | (0 << CS10); // clk_io / 8
    OCR1B = -2;

    // timer 0 initialization (onscren interface)
    TC0B_CONTROL = (1 << CS02) | (0 << CS01) | (1 << CS00); // clk_io / 1024 (overflow at 30.5Hz)

    // timer 2 don't need an interrupts :D
    TIMSK0 |= (1 << TOIE0);
    TIMSK1 |= (1 << OCIE1A) | (0 << OCIE1B) | (0 << TOIE1);
    // but we need to update OCR2...
    TIMSK2 |= (1 << TOIE2);

    set_sleep_mode(SLEEP_MODE_IDLE);

    ReadEeprom();
    PeriodsSum = 0;
    iAvPeriodLen = 0;
    for (uint8_t i = 0; i < PeriodLenghts_size; i++) PeriodLenghts[i] = 0;
    GunTempSum = 0; GunTempI = 0;
    for (uint8_t i = 0; i < GunTemps_size; i++) {
        GunTemps[i] = 0;
        GunTempsSort[i] = i;
    }
    GHIntegral = 0; GHDerivative = 0;
    GunFeedbackMode = true;
    GunShutdownMode = true;
    GunShutdownCoolTimeout = ShutdownCoolTimeout;
    // Init LCD
    // turn it on
    portLCD_PWR |= (1 << poLCD_PWR);
    // release reset pin
    _delay_us(3); // 2500ns
    portLCD |= (1 << poLCD_RST);
    _delay_us(3);
    lcdInit();
    lcdClear();
    sei();
    while(1) {
        // output to lcd only here!
        DrawScreen();
        sleep_mode();
    }
//    return 0;
}
