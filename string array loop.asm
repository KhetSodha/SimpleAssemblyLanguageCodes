.model small
.stack 100h
.data   
arr db 'guman$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si, offset arr
    mov cx,5
   l1:
    mov dx,[si]  
     mov ah,2
    int 21h
    
    inc si
    loop l1
    
    mov ah,4ch
    int 21h
    main endp
end main