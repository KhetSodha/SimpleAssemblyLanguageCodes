.model small
.stack 100h
.data
.code
main proc
    mov cx,2
    l1:
        mov ah,1
        int 21h
   l2:
   loop l1
   mov dl,al
   add dl,32
   
   mov ah,2
   int 21h
   
   mov ah,4ch
   int 21h     
        
    main endp
end main