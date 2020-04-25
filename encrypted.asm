     DATA SEGMENT
        MSG1 DB 10,13,'ENTER STRING HERE :- $'   
        MSG2 DB 10,13,'ENCRYPTED STRING IS :- $'
        MSG3 DB 10,13,'DECRYPTED STRING IS : $'
       
        P1 LABEL BYTE
        M1 DB 0FFH
        L1 DB ?
        P11 DB 0FFH DUP ('$')
       
    DATA ENDS
    DISPLAY MACRO MSG
        MOV AH,9
        LEA DX,MSG
        INT 21H
    ENDM   
    CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
    START:
            MOV AX,DATA
            MOV DS,AX                
                   
            DISPLAY MSG1
           
            LEA DX,P1
            MOV AH,0AH    
            INT 21H
                          
            LEA SI,P11
            MOV CL,L1
            CALL ENCRYPT
           
            DISPLAY MSG2
            DISPLAY P11
                                   
            LEA SI,P11
            MOV CL,L1
            CALL ENCRYPT
           
            DISPLAY MSG3
            DISPLAY P11
           
            MOV AH,4CH
            INT 21H
    CODE ENDS
    ENCRYPT PROC NEAR
            MOV CH,0       
    CHECK1:
            CMP [SI],2FH
            JB DONE1
            CMP [SI],3AH
            JB NUM1
           
            CMP [SI],41H
            JB DONE1
            CMP [SI],5BH
            JB UPR1
           
            CMP [SI],61H
            JB DONE1
            CMP [SI],7BH
            JB LWR1
           
    NUM1:    CMP [SI],35H
            JB LNUM1
            SUB [SI],05H
            JMP DONE1
       LNUM1:    
            ADD [SI],05H
            JMP DONE1   
           
    UPR1:    CMP [SI],4EH
            JB LUPR1
            SUB [SI],0DH
            JMP DONE1
       LUPR1:    
            ADD [SI],0DH
            JMP DONE1
    LWR1:    CMP [SI],6EH
            JB LLWR1
            SUB [SI],0DH
            JMP DONE1
       LLWR1:    
            ADD [SI],0DH
                 
    DONE1:       
            INC SI
            LOOP CHECK1
           RET
    ENCRYPT ENDP
    DECRYPT PROC NEAR
            MOV CH,0       
    CHECK2:
            CMP [SI],2FH
            JB DONE2
            CMP [SI],3AH
            JB NUM2
           
            CMP [SI],41H
            JB DONE2
            CMP [SI],5BH
            JB UPR2
           
            CMP [SI],61H
            JB DONE2
            CMP [SI],7BH
            JB LWR2
           
    NUM2:   CMP [SI],35H
            JB LNUM2
            ADD [SI],05H
            JMP DONE2
       LNUM2:    
            SUB [SI],05H
            JMP DONE2   
           
    UPR2:    CMP [SI],4EH
            JB LUPR2
            ADD [SI],0DH
            JMP DONE2
       LUPR2:    
            SUB [SI],0DH
            JMP DONE2
    LWR2:    CMP [SI],6EH
            JB LLWR2
            ADD [SI],0DH
            JMP DONE2
       LLWR2:    
            SUB [SI],0DH
                 
    DONE2:       
            INC SI
            LOOP CHECK2
           RET
    DECRYPT ENDP
       
    END START

