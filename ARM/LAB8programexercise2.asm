    AREA LAB8programexercise2, CODE, READONLY

    MOV r0, #0 //Initialize counter i as 0
    ADR r8, j //Index register r8 points to array j

Loop
    LDRB r1, [r8] //Repeat get j[i], LDRB loads the least significant byte held in r0, into r2 offset by 1 bit
    ADD r1, r1, #5 //Add 5 to j[i]
    STRB r1, [r8], #1 //Save j[i] and update pointer. Calculates an address from a base register value and an immediate offset, and stores a byte from a register to memory
    ADD r0, r0, #1 //Increment loop counter i
    CMP r0, #10 
    BNE Loop

j DCB 0,0,0,0,0,0,0,0,0,0
    END