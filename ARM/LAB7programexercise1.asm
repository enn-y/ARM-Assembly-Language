    AREA LAB7programexercise1, CODE, READONLY
    
    MOV r0, #2
    BL SQR1 //Branch and link, it will branch and then come back
    ADD r3, r3, r0 //Execute after the branch finishes, this line will be held temporary until BL finishes

SQR1
    MUL r1, r0, r0
    ADD r1, r0, #10
    BX lr //Returns to the 2nd line (BL SQR1), Branch and link register
    MOV pc, lr //crucial for the program to run, if BX lr is used then MOV pc, lr needs to also be used
    END