data segment

string1 db "Oguzhan"
string2 db 7 dup(?)    
    
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
    
    lea si,string1
    lea di,string2
    mov cx,7
    dongu:
    lodsb
    stosb
    loop dongu
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
