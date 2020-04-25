.model small
.stack 100h
.data
 no1 db 10,13,"Enter 1st number: $"
 no2 db 10,13,"Enter 2nd number: $"
 result db 10,13,"Result= $"
 .code
 main proc
         mov ax,@data
         mov ds,ax
         
         lea dx,no1
         mov ah,9
         int 21h
         
         mov ah,1
         int 21h
         
         sub al,30h
         mov bh,al
         
         mov ah,1h
         int 21h
         
         sub al,30h
         mov bl,al
         
         lea dx,no2
         mov ah,9
         int 21h
         
         mov ah,1
         int 21h
         
         sub al,30h
         mov ch,al
         
         mov ah,1
         int 21h
         
         sub al,30h
         mov cl,al;;;;;;
         
         add bl,cl
         
         mov al,bl
         mov ah,00h
         AAA 
         
         mov cl,al
         mov bl,ah
         
         add bl,bh
         add bl,ch
         
         mov al,bl
         mov ah,00h
         AAA
         
         mov bx,ax
         ;mov bh,ah
         ;mov bl,al
         
         mov dx,offset result
         mov ah,09h
         int 21h
         
         mov dl,bh
         add dl,30h
         mov ah,02h
         int 21h
         
         mov dl,bl
         add dl,30h
         mov ah,2
         int 21h
         mov dl,cl
         add dl,30h
         mov ah,2
         int 21h
    main endp
 end main