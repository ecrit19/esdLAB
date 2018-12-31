        NAME    main
        
        PUBLIC  __iar_program_start
        
        
        SECTION .DATA:CONST:NOROOT(2)
NUM1L    DC32 0XFFFFFFFF
NUM1H    DC32 0XFFFFFFFF
NUM2L    DC32 0XFFFFFFFF
NUM2H    DC32 0XFFFFFFFF
RESL     DS32 1
RESH    DS32    1
RESC    DS32    1
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
    
                
                
main   
        LDR     R0,NUM1L
        LDR     R1,NUM1H
        LDR     R2,NUM2L
        LDR     R3,NUM2H
        ADDS    R4,R2,R0
        ADC     R5,R1,R3
        STR     R4,RESL
        STR     R5,RESH
        MOV     R0,#0X0
        ADC     R0,R0,R0
        STR     R0,RESC
       
stop    b       stop
       
        END
