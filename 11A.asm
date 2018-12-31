         NAME    main
        
        PUBLIC  __iar_program_start
        
        
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        CODE32
        LDR     R0,=THUMBCODE    
        MOV     LR,PC
        BX     R0
STOP    B       STOP

        CODE16
THUMBCODE
        MOV     R1,#0X5
        MOV     R2,R1
L1      SUBS    R1,R1,#1
        BEQ     HERE
        MUL     R2,R2,R1
        B       L1
HERE    BX      LR
       
      
        


       
        END
