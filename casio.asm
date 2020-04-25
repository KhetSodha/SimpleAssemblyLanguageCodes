.model small
.stack 100h

.data
msgOption    db 'Press (+) for Addtition or (-) for Subtraction',10,13,' $'
msgfirstNum  db 10,13,'Enter First Number:',' $'
msgsecondNum db 10,13,'Enter Second Number:',' $'
msgAnswer    db 10,13,'Your Answer is:',' $'
MSG1 DB ?
.code

main proc

mov ax, @data
mov ds, ax

mov ah, 09h
lea dx, msgOption
int 21h

mov ah, 01h
int 21h

cmp al, '+'
je addition

cmp al, '-'
je subtraction


exit:
mov ah, 4ch
int 21h



addition:

mov ah, 09h
lea dx, msgfirstNum 
int 21h

mov ah, 01h
int 21h

mov bl, al


mov ah, 09h
lea dx, msgsecondNum
int 21h

mov ah, 01h
int 21h

mov cl, al

add bl, cl

sub bl,48

mov ah, 09h
lea dx, msgAnswer
int 21h

mov ah, 02h
mov dl, bl
int 21h

jmp exit



subtraction:

mov ah, 09h
lea dx, msgfirstNum 
int 21h

mov ah, 01h
int 21h

mov bl, al

mov ah, 09h
lea dx, msgsecondNum
int 21h

mov ah, 01h
int 21h

mov cl, al

sub bl, cl

add bl,48

mov ah, 09h
lea dx, msgAnswer
int 21h

mov ah, 02h
mov dl, bl
int 21h

jmp exit


main endp
end main




