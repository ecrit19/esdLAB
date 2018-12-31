        NAME    main
        
        PUBLIC  __iar_program_start
        
        
        SECTION .DATA:CONST:NOROOT(2)
NUM     DCB    0X1,0X2,0X3,0X4
LEN     DCB    (LEN-NUM)
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        LDR     R0,=NUM
        LDRB    R1,LEN
        MOV     R4,#0X0A
      
L1      LDRB     R2,[R0]
        ADD     R3,R3,R2
        SUBS    R1,R1,#1
        
        BEQ     stop

        MUL     R3,R3,R4
        ADD     R0,R0,#1
        B       L1
       
stop    b       stop
       
        END
