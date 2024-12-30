INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "assembly procedure end now",0

.code

asmfunc PROC p1:DWORD, p2:DWORD        
    mov esi,p1           
    mov edi,p2             
      mov ebx,0       
    mov ecx,8         
next:
    mov eax, [esi]       
    cmp eax, 0           
    jne count_non_zero   
    add esi, 4           
    loop next            
    jmp EndFunc          
    count_non_zero:          
    inc ebx              
    add esi, 4           
    loop next            
EndFunc:
    mov [edi], ebx      
    mov edx, OFFSET msg  
    call WriteString     
    ret                
asmfunc ENDP
end
