        NAME    main
        
        PUBLIC  __iar_program_start
        
        
        SECTION .DATA:CONST:NOROOT(2)
NUM     DC16    0X1234

        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        LDR     R0,=NUM
        MOV    R1,#0x04
        MOV     R4,#0X0A
        MOV     R6,#4
;SECOND
        ADD     R0,R0,#1
        LDRB    R2,[R0]
        MOV     R3,R2
        AND     R2,R2,#0X0F
        AND     R3,R3,#0XF0
        ROR     R3,R3,R6
        ADD     R5,R5,R3
        MUL     R5,R5,R4
        ADD     R5,R5,R2
        MUL     R5,R5,R4
        SUB     R0,R0,#1
        LDRB    R2,[R0]
        MOV     R3,R2
        AND     R2,R2,#0X0F
        AND     R3,R3,#0XF0
        ROR     R3,R3,R6
        ADD     R5,R5,R3
        MUL     R5,R5,R4
        ADD     R5,R5,R2
        
        
        

stop    b       stop
       
        END
