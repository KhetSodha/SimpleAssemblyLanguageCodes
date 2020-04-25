.model small
.stack 100h
.data 
msg1 db 10,13, "Valid$"  
msg2 db 10,13, "Error$"
arr db "abc$" 
.code
main proc 
mov ax,@data
mov ds,ax   

mov cx,3

l1:
mov ah,7
int 21h
mov dl,'*'
mov ah,2
int 21h
l2:
loop l1

l3:
cmp al,arr
je l5  
jne l4

l4:
lea dx,msg1
mov ah,9
int 21h

mov ah,4ch
int 21h 

l5:
lea dx,msg2
mov ah,9
int 21h

mov ah,4ch
int 21h 

   main endp
end main