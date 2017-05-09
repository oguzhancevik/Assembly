data segment
    
    ;stringlerin sonunda dolar isareti koyarsak stringin bittigini ifade ediyor
    string db "merhaba dunya$"
    
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
    
     ;scas komutu al registeri icindeki karakter ile stringimizi kiyaslama yapar
     
     
     mov al,"a"
     mov bl,"*"
     lea di,string
     mov cx,14     
     dongu:
     repne scasb
     jne yazdir
     
     mov [di-1],bl
     jmp dongu
     
     yazdir:
     mov ah,09
     lea dx,string
     int 21h 

        mov ax, 4c00h ; exit to operating sys
    int 21h    
ends

end start ; set entry point and stop the assembler.
    
    
