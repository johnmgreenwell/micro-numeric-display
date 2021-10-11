//----------------------------------------------------------------------------
// Name        : micro7seg.cpp
// Author      : John Greenwell
// Purpose     : QDSP-6064 Bubble 7-Segment Display Class
// Description : This source file accompanies header file micro7seg.h
// Platform    : Multiple
// Language    : C++
// Copyright   : N/A
//----------------------------------------------------------------------------

#include <Arduino.h>
#include "micro7seg.h"

namespace PeripheralIO {

const uint8_t CONVERSION_TABLE[16] = 
{
    0x3F, // 0
    0x06, // 1
    0x5B, // 2
    0x4F, // 3
    0x66, // 4
    0x6D, // 5
    0x7D, // 6
    0x07, // 7
    0x7F, // 8
    0x67, // 9
    0x77, // A
    0x7C, // B
    0x39, // C
    0x5E, // D
    0x79, // E
    0x71, // F
};

Micro7Seg::Micro7Seg()
: _userCustomBegin(nullptr),
  _userCustomLatchData(nullptr),
  _userCustomCCSelect(nullptr),
  _digit(),
  _refreshIterator(0)
{ }

/*
Initialise Micro7Seg
*/
void Micro7Seg::begin(void (*functionPointers[])(uint8_t)) {
    _userCustomBegin = functionPointers[0];
    _userCustomLatchData = functionPointers[1];
    _userCustomCCSelect = functionPointers[2]; 
    _userCustomBegin(0);
}

/*
Refresh the display; must be called at regular intervals
*/
void Micro7Seg::refresh() {
    _userCustomCCSelect(_refreshIterator);
    _userCustomLatchData(_digit[_refreshIterator].code);
    _refreshIterator = (_refreshIterator + 1) % 4;
}

/*
Clear the display
*/
void Micro7Seg::clear() {
    for (uint8_t i = 0; i < 4; i++) {
        _digit[i].code = 0;
        _digit[i].value = 0;
        _digit[i].toChar = '\0';
        _digit[i].hasDec = false;
    }
}

/*
Print raw 16-bit data hexadecimal to display
*/
void Micro7Seg::print(uint16_t data) {
    for (uint8_t i = 0; i < 4; i++) {
        uint8_t tmp = 0x0F & (uint8_t)(data >> (i * 4));
        _digit[i].value = tmp;
        _digit[i].code = convertTo7SegDigit(tmp);
        _digit[i].toChar = (tmp > 9) ? (tmp + 0x37) : (tmp + 0x30);
        _digit[i].hasDec = false;
    }
}

/*
Print properly formatted string to display
*/
bool Micro7Seg::print(const String& str) {
    bool stringValid = true;
    uint8_t digIt = 0;
    clear();
    for (uint8_t i = str.length(); i > 0; i--) {
        uint8_t data = str[i-1];
        data = toUpperCase(data);
        if (!checkCharValidity(data)) {stringValid = false; break;}
        if (data == '.') {
            _digit[digIt].code |= 0x80;
        }
        else {
            _digit[digIt].code |= convertCharToCode(data);
            _digit[digIt].value = convertCharToVal(data);
            _digit[digIt].toChar = data;
            _digit[digIt].hasDec = (_digit[digIt].code & 0x80);
            if (digIt < 3) digIt++;
            else break;
        }
    }
    return stringValid;
}

/* Private support function */
uint8_t Micro7Seg::convertCharToVal(uint8_t data) const {
    if (data >= '0' && data <= '9') data -= 0x30;
    else if (data >= 'A' && data <= 'F' ) data -= 0x37;
    else data = 0;
    return data;
}

/* Private support function */
uint8_t Micro7Seg::convertCharToCode(uint8_t data) const {
    if (data == '-') data = 0x40;
    else if (data == ' ') data = 0;
    else data = convertTo7SegDigit(convertCharToVal(data));
    return data;
}

/* Private support function */
uint8_t Micro7Seg::convertTo7SegDigit(uint8_t nibble) const {
    nibble &= 0x0F;
    return CONVERSION_TABLE[nibble];
}

/* Private support function */
bool Micro7Seg::checkCharValidity(char data) const {
    bool validityCheck = true;
    if (data < '0' || data > '9') {
        if (data < 'A' || data > 'F') {
            if (data != '-' && data != '.' && data != ' ')
                validityCheck = false;
        }
    }
    return validityCheck;
}

/* Private Digit Class */
Micro7Seg::Digit::Digit()
: code(),
  value(),
  toChar(),
  hasDec()
{ }

}