         NAME    main
        
        PUBLIC  __iar_program_start
        
        SECTION  .DATA:CONST:NOROOT (2)
NUM     DC32    0X12124,0X1412432,0X15,0X13547,0X2111124,0X1
LEN     DCB     (LEN-NUM)/4
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        CODE32
        LDR     R8,=THUMBCODE
          
        LDR     R0,=NUM
        LDRB     R1,LEN
        LDR     R2,NUM
        LDR     R3,NUM
       
        MOV     LR,PC
        BX     R8
STOP    B       STOP

        CODE16
THUMBCODE
        
        ;LARGEST R2, SMALLEST R3
      
        
L1      ADD     R0,R0,#4
        SUBS    R1,R1,#1
        BEQ     HERE
        LDR     R4,[R0]
        CMP     R4,R2
        BLO     LOWER
        LDR     R2,[R0]
        B       L1
LOWER   
        CMP     R4,R3
        BHI     L1
        LDRB     R3,[R0]
        B       L1
HERE    BX      LR
     


       
        END
