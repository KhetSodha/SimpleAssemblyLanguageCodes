.model small
.stack 100h
.data
arr1 db 20 dup ('$')
.code
main proc
    
    mov ax,@data
    mov ds,ax
   
    mov si,offset arr1
   L1:
    mov ah,1
    int 21h  
    
    cmp al,13
    je end_
    
    mov [si],al
    inc si
    jmp L1
   end_:
    mov dl,10
    mov ah,2
    int 21h 
    
    mov dl,13
    mov ah,2
    int 21h
        
    mov dx,offset arr1
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main



