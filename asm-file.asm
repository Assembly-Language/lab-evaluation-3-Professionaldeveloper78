include irvine32.inc
.data
.code
asmfunc PROC a1: dword,a2: dword
mov esi,a1
mov edi,a2
mov ecx,20
mov edx,ecx
notzero:
mov eax,[esi]
cmp eax,0
jnz skipadd
mov eax,[edi]
add eax,1
mov [edi],eax
skipadd:
add esi,4
ret
asmfunc ENDP
end
;2nd last commit
