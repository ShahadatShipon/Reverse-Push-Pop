.model small
.stack 100h


.code
main proc
    
    mov cx,0 
    
    pushh:
        mov ah,1
        int 21h
        mov bl,al 
        
        CMP bl,013
        JE newl
        
        PUSH BX 
        INC CX 
        
        JMP pushh
        
     newl:
        mov ah,2
        mov dl,0AH
        int 21h
        mov dl,0DH
        int 21h
        
     popp:
        
         POP DX 
         int 21h
         LOOP popp
         
     exit:
        mov ah,4ch
        int 21h
     main endp
end main
        