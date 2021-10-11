//----------------------------------------------------------------------------
// Name        : main.cpp
// Author      : John Greenwell
// Purpose     : QDSP-6064 Bubble 7-Segment Display Test Project Main
// Description : 
//               This test project is to experiment with the QDSP-6064 7-Seg
//               Bubble Display module.
//
// Platform    : Teensy 3.1
// Language    : C++ (Arduino framework)
// Copyright   : N/A
// Requires    : External Libraries : N/A
//               Custom Libraries   : micro7seg.h
//----------------------------------------------------------------------------

#include <Arduino.h>
#include <SPI.h>
#include "TeensyTimerTool.h"
#include "micro7seg.h"
#include "cli.h"
#include "main.h"

TeensyTimerTool::PeriodicTimer refreshTimer;
PeripheralIO::Micro7Seg display;

void setup()  {
    pinMode(LED, OUTPUT);
    digitalWriteFast(LED, HIGH);
    display.begin(micro7SegIOBind);
    refreshTimer.begin(refreshDisplay, REFRESH_INTERVAL_US / 4);
}

void loop() {
    for (uint8_t i = 0; i < 4; i++) {
        display.print("-.   ");
        delay(200);
        display.print(" .-.  ");
        delay(200);
        display.print("  .-. ");
        delay(200);
        display.print("   .-.");
        delay(200);
        display.print("    .");
        delay(200);
    }
    display.print("dead");
    delay(500);
    display.print("beef");
    delay(500);
    for (uint16_t i = 0; i < 0xFFFF; i++) {
        display.print(i);
        delay(50);
    }
}


/* Support functions */

void refreshDisplay() {
    display.refresh();
}

void micro7SegBegin(uint8_t dummy) {
    pinMode(SPI_CS, OUTPUT);
    digitalWriteFast(SPI_CS, LOW);
    SPI.begin();
    pinMode(MICRO7SEG_CC1, OUTPUT);
    digitalWriteFast(MICRO7SEG_CC1, LOW);
    pinMode(MICRO7SEG_CC2, OUTPUT);
    digitalWriteFast(MICRO7SEG_CC2, LOW);
    pinMode(MICRO7SEG_CC3, OUTPUT);
    digitalWriteFast(MICRO7SEG_CC3, LOW);
    pinMode(MICRO7SEG_CC4, OUTPUT);
    digitalWriteFast(MICRO7SEG_CC4, LOW);
}

void micro7SegLatchData(uint8_t data) {
    digitalWriteFast(SPI_CS, LOW);
    SPI.transfer(data);
    digitalWriteFast(SPI_CS, HIGH);
}

void micro7SegCCSelect(uint8_t select) {
    digitalWriteFast(DIGIT_SELECT_TABLE[(select + 1) % 4], LOW);
    digitalWriteFast(DIGIT_SELECT_TABLE[(select + 2) % 4], LOW);
    digitalWriteFast(DIGIT_SELECT_TABLE[(select + 3) % 4], LOW);
    digitalWriteFast(DIGIT_SELECT_TABLE[select], HIGH);
}
