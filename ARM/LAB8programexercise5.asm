    AREA LAB8programexercise5, CODE, READONLY

    ADR r6, List //r6 points to List
    MOV r0, #0 //copy 0 into r0
    MOV r2, #1 //r2 is the counter variable
    LDRB r0, [r6] //load r0 with r6
    MOV r8,r6 //Move r6 to r8

Loop
    ADD r0,r0,#1 //Add 1 to the element in the list
    STRB r0, [r8] //Store r0 in r8
    ADD r8, r8, #1 //Add the element with 1
    LDRB r0, [r8] //Load r0 with r8
    CMP r2, #5 //Compare r2 with 5
    ADDNE r2, r2, #1 //The ADDNE and SUBNE instructions are executed only if the Z bit is "0", if r2 not equal to 5 then run this because only then the z bit is 0
    BNE Loop
Done B Done

List DCB 0,2,4,6,8
    END
