        NAME    main
        
        PUBLIC  __iar_program_start
        
        
        SECTION .DATA:CONST:NOROOT(2)
NUM     DC32    0X12,0X8,0X0,0XFF,0X1,0Xf
LEN     DC32    (LEN-NUM)/4
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        LDR     R0,=NUM
        LDRB    R2,LEN
        MOV     R1,R0
        MOV     R5,R2
L1     MOV     R3,R0
        MOV     R6,R2
        SUB     R2,R2,#1
L2      ADD     R4,R3,#4
        LDR     R7,[R3]
        LDR     R8,[R4]
        CMP     R7,R8
        BLO     NOSWAP
        STR     R7,[R4]
        STR     R8,[R3]
NOSWAP  ADD     R3,R3,#4
        SUBS    R6,R6,#1
        BNE     L2
        ADD     R1,R1,#4
        SUBS    R5,R5,#1
        BNE     L1
        
        
             
       
stop    b       stop
       
        END
