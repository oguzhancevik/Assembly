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
    
    
    ; interrupt kesme islemleri dx registeri ile gerceklestirilir
    
    mov ah,01
    int 21h
    
    
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
