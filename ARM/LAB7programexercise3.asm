    AREA LAB7programexercise3, CODE, READONLY

    ADR r0, List //r0 pointer to "List"
    MOV r1, #5 //Number of elements in the list, 5 are present
    MOV r2, #0 //Load r2 with 0 because result will be stored here/ initialize r2
Loop
    LDR r3, [r0] //Load address r3 with contents of r0
    ADD r0, r0, #4 //Each instruction occupies 4 BYTES as stated, so r0 is added with 4 each time
    ADD r2, r2, r3 //Add the element in the initialized list
    SUBS r1, r1, #1 //Decrement, so, add the next number, to the right
    BNE Loop //Countinue to loop until there are no more elements to add/ 0

List DCD 21, 12, 33, 15, 18
    END