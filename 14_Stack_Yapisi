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
    
    
    mov ax,2
    mov bx,3
    
    push ax
    push bx
    pop dx
    pop cx       
    
    
    ;stack ile ilgili ornek
    ;push ekleme
    ;pop cikarma
    ;2byte islemler seklinde gerceklestirilir
   
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
