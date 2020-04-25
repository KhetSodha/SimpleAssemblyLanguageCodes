.model small
.stack 100h
.data
     no1 DB "Enter First Number",0DH,0AH,'$'
     no2 DB ,0DH,0AH,"Enter Second Number",0DH,0AH,'$'
     ans DB ,0DH,0AH,"Aanswer ",0DH,0AH,'$'    
     OP1 DB ?
     OP2 DB ?
.code
.startup

;FIRST OPERAND
mov dx,offset no1
mov ah,9h
int 21h   

mov ah,1h
int 21h 

sub al,48
mov op1,al 

;SECOND OPERAND
mov dx,offset no2
mov ah,09h
int 21h

mov ah,1h
int 21h

sub al,48
mov op2,al
mov ah,9

mov dx, offset ans
int 21h

mov al,op1
mov bl,op2
mul bl
add al,48

; PRINT RESULT
mov ah,0EH
int 10h

.EXIT
END

