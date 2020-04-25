
org 100h

; for input
mov ah,1
int 21h
mov cl,al

;for next line
mov dl,10
mov ah,2
int 21h

;for new line start
mov dl,13
mov ah,2
int 21h

;for adding a value to 32
add cl,32
mov dl,cl

;for printing
mov ah,2
int 21h

ret




