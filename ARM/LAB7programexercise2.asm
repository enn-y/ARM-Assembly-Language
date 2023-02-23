    AREA LAB7programexercise2, CODE, READONLY

    MOV r3, #7 //Initialize input value 7 in register r3
    MOV r7, #1 //Initialize r7 as register to store the result/ constant
    BL factorial
    MOV r0, r7 //Move result from r7 to r0

factorial
loop CMP r3, #0 //
    MULGT r7,r3,r7 //If r3 is greater than 0, then, multiply r3 and r7 and store in r7
        SUBGT r3, r3, #1 //decrement the initial number 7 each time so in the next loop, it is 6, then 5, etc.
        BGT loop //If r3 is greater than 0 then loop
        BX lr //Return to when the BL started and finish last step
        MOV pc, lr