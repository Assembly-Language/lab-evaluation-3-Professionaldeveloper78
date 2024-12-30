include irvine32.inc
.data
.code
asmfunc PROC a1:ptr dword,a2:ptr dword, a3:dword
mov esi,a1
mov ecx,a2
mov ebx,a3
mov eax,0
mov edi,0
mov edx,ecx
notzero:
mov eax,dword ptr [esi]
test eax,eax 
jz skip 
inc edi 
skip:
add esi,4
dec edx
jnz notzero
mov dword ptr [ebx],edi
ret
asmfunc ENDP
end
;2nd last commit
