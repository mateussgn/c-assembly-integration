SECTION .text
global sortarray
sortarray:
    enter 0,0
    
    mov edx, [ebp+8]     ;EDX receives the inicial array position
    mov ecx, [ebp+12]    ;ECX receives the array size
    push ebx             ;EBX it is preserved for controlling the array positions

    mov ebx, 0
    mov eax, 0

sort_assistent:
    cmp ebx, [ebp+12]   ;Is it the array's end?
    je sorted           ;If it is, then the comparison is finished
    inc ebx             ;If it isn't, then icreases ebx to the next array position
    
    push ebx
    mov ebx, 0
    mov eax, [edx+ebx*4]

compare:
    inc ebx
    cmp ebx, [ebp+12]
    je compared         ;Finish comparison
    dec ebx
    
    add edx, 4
    mov eax, [edx+ebx*4];EAX gets the next array position
    sub edx, 4

    cmp eax, [edx+ebx*4]
    ja next             ;Comparison to continue the sorting

change_values:
    push ecx            ;Saving ECX to exchange array values

    mov ecx, [edx+ebx*4]
    mov [edx+ebx*4], eax

    add edx, 4
    mov [edx+ebx*4], ecx
    sub edx, 4

    pop ecx
    
next:
    inc ebx
    jmp compare

compared:
    pop ebx
    jmp sort_assistent

sorted:
    pop ebx
    leave
    ret