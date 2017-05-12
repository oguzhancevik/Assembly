data segment                     

ends


stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax  
    
    
    ;bu ornek stack ile ilgili olacaktir. 
    
    mov ax,0
    mov bx,0
    mov dl,5
    mov cx,25
    dongu:
    inc ax
    push ax
    div dl
    cmp ah,0
    je dongu2
    jne dongu3
    devam:
    loop dongu
    
    jmp son
    
    dongu3:
    pop ax
    jmp devam
    
    dongu2:
    inc bx
    pop ax
    jmp devam
    
    son:
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
