        NAME    main
        
        PUBLIC  __iar_program_start
        
        
        SECTION .DATA:CONST:NOROOT(2)
NUM     DC32    0X1234,41241,63462,63477,1313,36461
LEN     DC32    (LEN-NUM)/4
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        LDR     R0,=NUM
        LDR     R1,LEN
        MOV     R2,R0
        MOV     R3,#0X0
        MOV     R4,#0X1
L1      
        SUB     R5,R2,R1
        SUB     R5,R5,#1
        MOV     R3,#0
        ADD     R4,R3,#1
        
L2      
        LDR     R6,[R3]
        LDR     R7,[R4]
        CMP     R7,R6
        BHI      NOSWAP
        STR     R6,[R4]
        STR     R7,[R3]
NOSWAP  ADD     R3,R3,#1
        ADD     R4,R4,#1
        CMP     R3,R5
        BL      L2
        ADD     R2,R2,#1
        CMP     R2,R1
        BL      L1
        
       
stop    b       stop
       
        END
