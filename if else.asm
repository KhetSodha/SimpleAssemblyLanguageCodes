.model small
.stack 100h
.data
input db 10,13,"Enter your age: $"
msg1  db 10,13,"You can apply for this!$"   
msg2  db 10,13,"You cannot apply for this!$"
.code  
     main proc
     mov ax,@data
     mov ds,ax

     lea dx,input
     mov ah,9
     int 21h
     
     mov ah,1
     int 21h
     
     cmp al,'8'
     jle l1 
     cmp al,'9'
     jge l2
    
    l1:
     lea dx,msg2
     mov ah,9
     int 21h
     
     mov ah,4ch
     int 21h
    
    l2:
     lea dx,msg1
     mov ah,9
     int 21h
     
     mov ah,4ch
     int 21h
     
    
    main endp
end main         
     
     