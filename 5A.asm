        NAME    main
        
        PUBLIC  __iar_program_start
        
 
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main   
        MOV     R0,#1
        MOV     R1,R0
L1      SUBS    R0,R0,#1
        BEQ     stop
        MUL     R1,R1,R0
        B       L1
        
stop    b       stop
        
        

        
       

       
        END
