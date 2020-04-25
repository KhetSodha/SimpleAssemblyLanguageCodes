.model small
.stack 100h
.data
.code 
main proc
    mov cx,10
    mov dl,48
    
    label:
    mov ah,2
    int 21h
    add dl,1; increase by 1, we can turn this loop to any loop by changing one to 2,3 or 4 etc...0,3,6
    ;inc dl; add 1 to dl till cx no. 
    ;if we put both add and inc loop increase by +2..0,2,4..
    loop label
    
    mov ah,4ch
    int 21h
    
    main endp
end main


