         NAME    main
        
        PUBLIC  __iar_program_start
        
        SECTION .DATA:CONST:NOROOT (2)
STR     DCB     "HI THERE"
DEST    DS8     20
LEN     DCB     (DEST-STR)
        SECTION .intvec:CODE:NOROOT (2)



__iar_program_start
        
                
                
main 
      LDR       R0,=DEST
      LDR       R1,=DEST
      SUB       R0,R0,#2
      LDRB       R3,LEN
L1    SUBS      R3,R3,#1
      BEQ       stop
      LDRB      R4,[R0]
      STRB      R4,[R1]
      ADD       R1,R1,#1
      SUB       R0,R0,#1
      B         L1
      
      



stop    b       stop
       
      
        


       
        END
