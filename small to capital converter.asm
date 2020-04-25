.model small
.data
	mes1 db 'Enter a small case character: ','$'
	mes2 db 'The character converted to capital case letter is: ','$'
.code
	MOV AX, @DATA		; Assume Data segment
	MOV DS, AX

	MOV DX, OFFSET mes1	; Display message mes1
	MOV AH, 09H
	INT 21H

	MOV AH, 08H		; Read character without echo
	INT 21H
				; AL = Input Charatcer 
	SUB AL, 20H		; convert character to capital 
	MOV BL, AL		; Save character 	

	
	MOV DX, OFFSET mes2	; Display message mes2
	MOV AH, 09H
	INT 21H

	MOV DL, BL	
	MOV AH, 02H		; Display character
	INT 21H
	
	MOV AH, 4CH		; Terminate program and 
	INT 21H			; Exit to DOS
			
end