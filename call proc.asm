.model small
.stack 100h
.data
msg1 db 10,13,'Hello$'
msg2 db 10,13,'How are you$'
msg3 db 10,13,'Bye Bye$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,9
    int 21h
    
    call start
    lea dx,msg3
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    main endp

start proc
    lea dx,msg2
    mov ah,9
    int 21h
    
    ret
    start endp
end main