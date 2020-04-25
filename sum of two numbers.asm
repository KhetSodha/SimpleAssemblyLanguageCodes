
org 100h
        
;for input        
mov ah,1  
int 21h
mov cl,al

mov ah,1
int 21h

add cl,al

sub cl,48
mov dl,cl
mov ah,2
int 21h

ret




