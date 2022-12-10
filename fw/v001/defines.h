/*
T0 — интерфейс таймаут
T1 — отслеживание фазы питания фена
T2 — ШИМ компрессора
main cycle — перерисовка экрана
*/

#define CEILING(x,y) (((x) + (y) - 1) / (y))
#define STR2(s) #s
#define STR(s) STR2(s)

// периферия

#define portOpto    PORTD
#define poSolder    PORTD4
#define poGunHeat   PORTD5

#define poDebugD0   PORTD0
#define poDebugD1   PORTD1
#define poDebugD3   PORTD3
#define poDebugB6   PORTB6
#define poDebugB7   PORTB7

#define portPhaseDetector   PORTD
#define ddrPhaseDetector    DDRD
#define piPhaseDetector     PIND2

// аппаратный ногодрыг
#define portGunAir  PORTB
#define poGunAir    PORTB3

#define portSens    PORTC
#define piGunTemp   PINC0
#define piVarSolder PINC1
#define piVarGunAir PINC2
#define piVarGunHeat PINC3
#define piSolderTemp PINC4
#define piButtons   PINC5

#define admGunTemp      0b0000
#define admVarSolder    0b0001
#define admVarGunAir    0b0010
#define admVarGunHeat   0b0011
#define admSolderTemp   0b0100
#define admButtons      0b0101
#define admFirst    admGunTemp
#define admLast     admButtons

#define portLCD     PORTB
#define poLCD_PWR   PORTB0
#define poLCD_RST   PORTB1
#define poLCD_CS    PORTB2

#define portLCD_HI  PORTD
#define poLCD_DATA  PORTD6
#define poLCD_CLK   PORTD7

#define LCD_WIDTH   96
#define LCD_HEIGHT  68
#define LCD_PAGES   9
// высота букавы - 8 пикселей
#define FONT_HEIGHT 8
#define FONT_WIDTH  6
#define LCD_ROWS    CEILING(LCD_HEIGHT, FONT_HEIGHT)
#define LCD_COLUMNS CEILING(LCD_WIDTH, FONT_WIDTH)

// кнопки
#define butDelta    0x14
#define butOk       0x14
#define butEsc      0x40
#define butUp       0x80
#define butDown     0xC0
#define derattling  10

// eeprom
#define eeSettingsSize 13
#define eeGHIntegral 0
#define eeGHProportional 4
#define eeGHDerivative 8
#define eeMenuTimeout 12

// gun heat regulation
//#define PowerMin 0xFFFE
// maximal power value, independent from cycle length
#define PowerMax 1023
// ambient temperature, lower that turn air off after timeout
// ADC value, not degrees
#define TemperatureAmbient 24

#define T2OVFFrequency     15625
// продуваем 100 секунд после того, как термопара сказала, что воздух холодный
#define ShutdownCoolTimeout (uint32_t)100*T2OVFFrequency
#define MinimalAir         0x14
// gun heat regulator coefficient. as OA can't output more than Vcc-1.2v
// let's maximum will be 350, measuring maximum is 375
#define MaxOA              780
// potentiometer can't output maximum
#define RegulMargin        50
#define GunHeatK           ((MaxOA - (63 - RegulMargin))/1023.0)

#define ProportionalK 3.5
#define DerivativeK 5
#define IntegralK 0.001

#if MCU == atmega8
    #define TIFR1 TIFR
    #define OCR2A OCR2
    #define EI_CONTROL MCUCR
    #define EI_MASK GICR
    #define COM2A1 COM21
    #define COM2A0 COM20
    #define TC2A_CONTROL TCCR2
    #define TC2B_CONTROL TCCR2
    #define TC0A_CONTROL TCCR0
    #define TC0B_CONTROL TCCR0
    #define TIMSK0 TIMSK
    #define TIMSK1 TIMSK
    #define TIMSK2 TIMSK
#elif MCU == atmega328
    #define EI_CONTROL EICRA
    #define EI_MASK EIMSK
    #define TC2A_CONTROL TCCR2A
    #define TC2B_CONTROL TCCR2B
    #define TC0A_CONTROL TCCR0A
    #define TC0B_CONTROL TCCR0B
#endif // MCU
