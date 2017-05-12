data segment
    string1 db "tek$"
    string2 db "cift$"                    

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
    
    ;ekran yazi yazma parametre kodu
    mov ah,01
    int 21h          
    
    
    mov dl,2
    div dl
    cmp ah,0
    je cift
    
    mov ah,09
    lea dx,string1
    int 21h
    
    jmp son
    
    cift:
    mov ah,09
    lea dx,string2
    int 21h
    
    son:  
    
    ;ekrana yazi gozukmesini istedigim parametre
    mov ah,09
    lea dx,string1
    int 21h
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
