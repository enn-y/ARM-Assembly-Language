    AREA LAB8programexercise3, CODE, READONLY

    ADR r0, Va //r0 pointer to array Va, The ADR instruction loads an address within a certain range, without performing a data load
    ADR r1, Vb //r1 pointer to array Vb
    ADR r2, Vc //r2 pointer to array Vc
    MOV r3, #8 //

Loop
    LDRB r5, [r0], #1 //Load r5 with r0 + 1 (Post-Index)
    LDRB r6, [r1], #1 //Load r6 with r1 + 1
    ADD r5, r5, r6
    MOV r5, r5, LSR #1 //Divide r5 by 2
    STRB r5, [r2], #1 //Store r5+1 in r2
    SUBS r3, r3, #1 //Subtract r3 with 1
    BNE Loop //Loop

Va DCB 2,2,2,2,2,2,2,2 //The DCB directive allocates one or more bytes of memory, and defines the initial runtime contents of the memory.
Vb DCB 4,4,4,4,4,4,4,4
Vc DCB 0,0,0,0,0,0,0,0
    END