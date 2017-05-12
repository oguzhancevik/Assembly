; multi-segment executable file template.

data segment

a db 2
sonuc dw ?
sonuc2 db ?
kalan dw ?                          

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    
    ; çcarma isleminde ax registerini kullaniyoruz
    mov ax,2h
    mov bx,2h
    mul bx
    
    mov ax,5h
    mul a 
    mov sonuc,ax  
    
    
    ; bolme islemindede ax registerini kullaniyoruz
    mov ax,2h
    mov bx,2h
    div bx 
    
    mov ax,3h
    mov bx,2h
    div bx
    mov sonuc2 ,al
    mov kalan,dx
    
  
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
