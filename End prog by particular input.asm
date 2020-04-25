.model small
.stack 100h
.data
.code 
main proc
    
    L1:
    mov ah,1
    int 21h 
    
    mov bl,'5'
    cmp bl,al
    je L2
    jne L1
    
    L2:
    mov ah,4ch
    int 21h
    
    main endp
end main


