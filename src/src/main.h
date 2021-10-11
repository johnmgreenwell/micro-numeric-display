//----------------------------------------------------------------------------
// Name        : main.h
// Author      : John Greenwell
// Purpose     : QDSP-6064 Bubble 7-Segment Display Test Project Main
// Description : 
//               This header file accompanies main.cpp.
//
// Platform    : Teensy 3.1
// Language    : C++ (Arduino framework)
// Copyright   : N/A
// Requires    : External Libraries : N/A
//               Custom Libraries   : micro7seg.h
//----------------------------------------------------------------------------

/* I/O Declarations, LED */

const uint8_t LED = 9;

/* I/O Declarations, 7-Seg Display */

const uint8_t SPI_CS = 10;
const uint8_t MICRO7SEG_CC1 = A0;
const uint8_t MICRO7SEG_CC2 = A1;
const uint8_t MICRO7SEG_CC3 = A2;
const uint8_t MICRO7SEG_CC4 = A3;

const uint16_t REFRESH_INTERVAL_US = 10000;

const uint8_t DIGIT_SELECT_TABLE[4] = 
{
    MICRO7SEG_CC4,
    MICRO7SEG_CC3,
    MICRO7SEG_CC2,
    MICRO7SEG_CC1
};

void refreshDisplay();
void micro7SegBegin(uint8_t dummy);
void micro7SegLatchData(uint8_t data);
void micro7SegCCSelect(uint8_t select);

void (*micro7SegIOBind[3])(uint8_t) = {
    &micro7SegBegin,
    &micro7SegLatchData,
    &micro7SegCCSelect
};