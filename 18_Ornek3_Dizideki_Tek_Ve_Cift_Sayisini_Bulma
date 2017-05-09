data segment
    
    dizi db 5,2,7,4,1
    cift db 0
    tek db 0             

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
    
    mov ax,0
    mov bx,0
    lea si,dizi
    mov al,[si]
    mov dl,2
    mov cx,5    
    dongu:
    inc si    
    div dl
    cmp ah,0
    je cft
    jne tk
    devam:
    loop dongu
    
    jmp son
    
    cft:
    inc cift
    mov al,[si]
    jmp devam
    
    tk:
    inc tek
    mov al,[si]
    jmp devam 
    
    
    son:
    

    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
