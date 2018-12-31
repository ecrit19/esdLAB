        NAME    main
        
        PUBLIC  __iar_program_start
        
        

        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        MOV     R0,#0X5
        MOV     R1,#0X2
        MOV     R8,R0
        BL      FACT
        MOV     R2,R9
        
        MOV     R8,R1
        BL      FACT
        MOV     R3,R9
        
        
        SUB     R4,R0,R1
        MOV     R8,R4
        BL      FACT
        MOV     R5,R9
        
        MUL     R6,R5,R3
L2      SUBS    R2,R2,R6
        ADD     R7,R7,#1
        BNE     L2
stop    b       stop
        
        
FACT    
        MOV     R9,R8
L1      SUBS    R8,R8,#1
        BEQ     HERE
        MUL     R9,R9,R8
        B       L1
HERE    MOV     PC,LR

        
        
       

       
        END
