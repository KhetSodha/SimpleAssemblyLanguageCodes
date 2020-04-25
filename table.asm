.STACK 100H
.DATA
MSG1 DB 10,13,"Enter a number = $"
NUM1 DB 0 
num2 db 0
.CODE 
    MOV AX,@DATA
    MOV DS,AX

    LEA DX,MSG1
    MOV AH,9
    INT 21H
        
    MOV AH,1
    INT 21H
    
    MOV NUM1,AL
    MOV CX,10       

HERE:  
    MOV DL,10
    MOV AH,2
    INT 21H

    MOV DL,13
    MOV AH,2
    INT 21H

    MOV DL,NUM1
    MOV AH,2
    INT 21H      
    
    MOV DL,'x'
    MOV AH,2
    INT 21H
    
    mov al,num2 
    mov ah,0
    add al,1 
    mov num2,al
    aaa
    mov dh,al
    mov dl,ah
    add dl,30h
    mov ah,2
    int 21h
    
    mov dl,dh
    add dl,30h
    mov ah,2
    int 21h  
    
    MOV DL,'='
    MOV AH,2
    INT 21H
    
    mov al,num1
    sub al,30h
    mov bl,num2
    
    mul bl
    aam
    
    mov dh,al
    mov dl,ah
    add dl,30h
    mov ah,2
    int 21h
    
    mov dl,dh
    add dl,30h
    mov ah,2
    int 21h
      
    LOOP HERE
    
EXIT:   
    MOV AH,4CH
    INT 21H                                    