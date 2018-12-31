         NAME    main
        
        PUBLIC  __iar_program_start
        
        SECTION  .DATA:CONST:NOROOT (2)
RES     DS32    1
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        CODE32
        LDR     R0,=THUMBCODE
        MOV     LR,PC
        BX     R0
        STR     R5,RES
STOP    B       STOP

        CODE16
THUMBCODE
        MOV     R0,#1
        ;SQUARE PASS R0 RETURN R1
        MOV     R2,#10;COUNTER
L1      MOV     R1,R0
        MUL     R1,R1,R0
        ADD     R5,R5,R1
        ADD     R0,R0,#1
        SUBS    R2,R2,#1
        BNE     L1
        BX      LR
     


       
        END
