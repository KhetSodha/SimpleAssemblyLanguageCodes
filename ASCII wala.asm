.model small
.stack 100h
.data        
msg db 10,13,'Guman Singh$'
arr1 db 10,13, 'Enter a character: $'
arr2 db 10,13, 'ASCII = $'
.code
main proc
    mov ch,3
   
    mov ax,@data
    mov ds,ax  
    
    lea dx,msg
    mov ah,9
    int 21h  
   start: 
    lea dx,arr1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,10
    mov ah,0
    div bl
    
    mov bl,ah
    add bl,48
    mov ah,0
    
    AAA
    
    mov cl,al
    mov bh,ah
    add cl,48
    add bh,48
    
    lea dx,arr2
    mov ah,9
    int 21h
    
    mov dl,bh
    mov ah,2
    int 21h
    
    mov dl,cl
    mov ah,2
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    
    dec ch
    jne start
    
    mov ah,4ch
    int 21h    
    main endp
end main