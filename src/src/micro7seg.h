//----------------------------------------------------------------------------
// Name        : micro7seg.h
// Author      : John Greenwell
// Purpose     : QDSP-6064 Bubble 7-Segment Display Class
// Description : 
//               This class intended for control of QDSP-6064 Bubble 7-Segment
//               display module.
//
//               This class is intended to be platform independent.
//               For this reason, user must supply pointers to the functions
//               which perform IO functions corresponding to the descriptions
//               accompanying begin() explanation. This allows a multiplicity
//               of circuit implmentation on a variety of processor platforms
//               all at a level of abstraction removed from the behaviour of
//               Micro7Seg Class.
//
// Platform    : Multiple
// Language    : C++
// Copyright   : N/A
// Requires    : External Libraries : N/A
//               Custom Libraries   : N/A
//----------------------------------------------------------------------------
#ifndef MICRO7SEG_H
#define MICRO7SEG_H

namespace PeripheralIO {

class Micro7Seg {
public:
    Micro7Seg();

    void begin(void (*functionPointers[])(uint8_t));
    // Initilises IO to the 7-seg display module
    // REQUIRES array of pointers to user-defined functions as follows:
    // functionPointers[0] = &micro7SegBegin
    // functionPointers[1] = &micro7SegLatchData
    // functionPointers[2] = &micro7SegCCSelect
    // ------
    // void micro7SegBegin(uint8_t dummy);
    // Ignore input dummy (for pointer type compatibility only)
    // Operation: Perform all necessary IO inisialisation in this function
    // ------
    // void micro7SegLatchData(uint8_t data);
    // Input: uint8_t data (to be supplied by Micro7SegClass)
    // Operation: data (MSB | DP, G, F, E, D, C, B, A | LSB) is applied to
    // the respective pins of the 7-Seg display
    // ------
    // void micro7SegCCSelect(uint8_t select);
    // Input: uint8_t select in range 0 - 3 (to be supplied by Micro7Seg Class)
    // Operation: input of 0 causes common cathode 1 to sink current from
    // the display, ..., input of 3 causes common cathode 4 to sink current
    // from the display; other common cathodes should be disabled from sinking
    // current and only the common cathode reference in the input should be
    // active at any given call to the function
    // ------

    void refresh();
    // Periodic function; call at a fixed interval (e.g. every 2.5 ms)
    // Refreshes each of the 4 digits, one digit per call to function

    void clear();
    // Clear the display, applied after next call to refresh()

    void print(uint16_t);
    // Raw print 16-bit unsigned int to display in hexadecimal
    // Arranged 1 nibble per digit (big endian)

    bool print(const String&);
    // Parse string to hexadecimal display, including decimal point if present
    // e.g. "3.142" or "12.00" or "BeEf" etc.
    // Returns true for successful operation
    // Returns false for invalid string input, no state change
 
private:

    struct Digit {
        Digit();
        uint8_t code;
        uint8_t value;
        char toChar;
        bool hasDec;
    };
    
    void (*_userCustomBegin)(uint8_t dummy);
    void (*_userCustomLatchData)(uint8_t byte);
    void (*_userCustomCCSelect)(uint8_t CCSelect);
    
    uint8_t convertCharToVal(uint8_t data) const;
    uint8_t convertCharToCode(uint8_t data) const;
    uint8_t convertTo7SegDigit(uint8_t) const;
    bool checkCharValidity(char data) const;

    Digit _digit[4];
    uint8_t _refreshIterator;

};

}

#endif