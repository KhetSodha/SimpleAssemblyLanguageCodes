.model small
.stack 100h
.data

msg1 db "Hello Guman$"
msg2 db '12345$'
.code

main proc  
    L1:
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,9
    int 21h  
    
    mov dl,10
    mov ah,2
    int 21h  
    
    mov dl,13
    mov ah,2
    int 21h  
    
    jne L1
    
    L2:
    mov dx,offset msg2
    mov ah,9
    int 21h 
    
    mov dl,10
    mov ah,2
    int 21h  
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main