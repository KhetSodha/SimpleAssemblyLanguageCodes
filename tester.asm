
org 100h

.model small
.stack 100h
.data
.code
msg1 db "Enter your Name: $"
msg2 db "You guessed wrong number, try again!$" 
msg3 db "Tum moti ho!$"

main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,9   
    int 21h
                    
    
    cmp    ax, bx      
    jl     L2  
    mov 'Guman', 1    
                
  
    
    je L2
     
    mov ax,@data
    mov ds,ax  
    
    mov dx,offset msg2
    mov ah,9
    int 21h   
    
  
    
    jne L1
    
    L2: 
    mov ax,@data ; these two lines can be used only time also, we can remove all and leave one.
    mov ds,ax   
    
    mov word 'Guman', -1  
    
    mov dx,offset msg3
    mov ah,9
    int 21h   
     
   
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    
    






