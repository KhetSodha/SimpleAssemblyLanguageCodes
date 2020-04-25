.model small
.stack 100h
.data
a db 'Input a hex digit: $'
b db 'Decimal: $'
.code
main proc
        mov ax,@data
        mov ds,ax
        
        lea dx,a
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        
        mov bl,al
        sub bl,17d; in C-> 67-17 = 50 = '2'
        
        mov dl,10
        mov ah,2
        int 21h 
        
        mov dl,13
        mov ah,2
        int 21h
        
        lea dx,b
        mov ah,9
        int 21h
        
        mov dl,49d
        mov ah,2
        int 21h
        
        mov dl,bl
        mov ah,2
        int 21h
        
       exit:
        mov ah,4ch
        int 21h
    main endp
end main