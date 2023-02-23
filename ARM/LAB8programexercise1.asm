    AREA LAB8programexercise1, CODE, READONLY

    LDR r1, Value1 //Load Value 1/ Value 1 initialized, LDR makes r0 = the string
    LDR r2, Value2 //Load Value 2/ Value 2 initialized, LDR makes r0 = the string
    CMP r1, r2 //Compare r1 and r2
    BHI done //If r1 is higher than r2 then Branch to "done"
    MOV r1, r2
done   
    STR r1, result //store result in r1
stop B stop

Value1 DCD &12 //define constant Value1 with value 12, TEST with & and without
Value2 DCD &15 //define constant Value2 with value 15,
Result DCD 0 //define constant Result with value 0,
    END