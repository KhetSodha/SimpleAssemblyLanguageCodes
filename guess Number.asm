.model small
.stack 100h
.data
msg1 db "Guess a number: $"
msg2 db "You guessed a wrong number, try again!$"
msg3 db "Congrats!$"
.code
main proc
   mov cx,5
   mov ax,@data
   mov ds,ax
L2:
   mov dx,offset msg1
   mov ah,9
   int 21h
   
   mov dl,10
   mov ah,2
   int 21h
   
   mov dl,13
   mov ah,2
   int 21h 
   
   mov ah,1
   int 21h
   
   mov dl,'7'
   cmp dl,al
   
   je L3
   jne L4
L3:
   mov dx,offset msg3
   mov ah,9
   int 21h
   
   mov dl,10
   mov ah,2
   int 21h
   
   mov dl,13
   mov ah,2
   int 21h
   
   jmp L5
L4: 
   mov dx,offset msg2
   mov ah,9
   int 21h
   
   mov dl,10
   mov ah,2
   int 21h
   
   mov dl,13
   mov ah,2
   int 21h
   
   jmp L2
L5:
   loop L2
   mov ah,4ch
   int 21h
   main endp
end main