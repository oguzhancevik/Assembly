data segment


ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:  

    
    ;loop komutu icin cx registeri kullaniyoruz
    
    ;bir artirma inc fonksiyonu ile yapilir
    
    ;bir azaltma dec fonksiyonu ile yapilir
    
    
    mov ax, data
    mov ds, ax
    
    mov cx,10
    mov ax,0h
    dongu:
    inc ax
    loop dongu

    
     
   
   
   
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
