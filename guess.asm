.model small
.stack 100h
.data
msg1 db 10,13,"Guess a number: $" 
msg2 db 10,13,"Congrats!$"
msg3 db 10,13,"You guessed a wrong number, try again!$"
.code
main proc
   mov ax,@data
   mov ds,ax
   
   mov cx,5
L1:
   mov dx,offset msg1
   mov ah,9
   int 21h
   
   mov ah,1
   int 21h
   
   mov dl,'7'
   cmp dl,al
   
   je L2
   jne L3
L2:
   mov dx,offset msg2
   mov ah,9
   int 21h
   
   jmp L4
L3: 
   mov dx,offset msg3
   mov ah,9
   int 21h

   jmp L1
L4:
   loop L1
   mov ah,4ch
   int 21h
   main endp
end main