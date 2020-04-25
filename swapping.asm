
org 100h

mov ax,'1'
mov bx,'2'

push ax
push bx

pop ax
pop bx

mov dx,ax
mov ah,2
int 21h  

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

mov dx,bx
mov ah,2
int 21h

ret




