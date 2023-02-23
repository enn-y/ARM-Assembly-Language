    AREA LAB8programexercise4, CODE, READONLY

    ADR r0, String1 //r0 points to String1
    ADR r1, String2 //r1 points to String2

Copy
    LDRB r2, [r0], #1 // Load r2 with r0+1
    STRB r2, [r1], #1 // Store r2+1 in r1
    CMP r2, #0x00 //Test for terminator
    BNE Copy //Repeat until terminator is found
    SVC #0x123456

String1 DCB "This is a string", 0x00
String2 SPACE 20
    END