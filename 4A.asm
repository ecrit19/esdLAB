        NAME    main
        
        PUBLIC  __iar_program_start
        
        SECTION .DATA:CONST:NOROOT (2)
STR     DCB     "ABCDCBA"
LEN     DCD     LEN-STR
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        LDR     R0,=STR
        LDR     R1,=LEN
        SUB     R1,R1,#2
L1      LDRB     R2,[R0]
        LDRB     R3,[R1]
        ADD     R0,R0,#1
        SUB     R1,R1,#1
        CMP     R2,R3
        BNEQ    NOPAL
        CMP     R0,R1
        BLO     L1
        MOV     R6,#11
        B       stop
NOPAL   MOV     R6,#0000
        
stop    b       stop
        
        

        
       

       
        END
