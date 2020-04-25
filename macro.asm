Print_string macro m1
    
    mov ah,9
    lea dx,m1
    int 21h

endm

new_line Macro n1
    mov dl,10
    mov ah,02h
    int 21h
    mov dl,13
    mov ah,02h
    int 21h
        
        endm

.model small
.stack 100h
.data 
msg1 db 'Asslam-u-Alaikum', 10,13, '$'
msg2 db 10,13,'saen $'
msg3 db 10,13,'munja $'
msg4 db 10,13,'Guman thakur Sahab $'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    print_string msg1
  
    print_string msg2
   
    print_string msg3
    
    print_string msg4
    
    mov ah,21h
    
     mov ah,4ch
     int 21h 
     
    main endp
end main