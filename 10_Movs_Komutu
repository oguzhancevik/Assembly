data segment
string1 db "OguzhanCevik"
string2 db 12 dup(?)                     

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, @data
    mov ds, ax
    mov es,ax
    
    ;cld komutu sitringin soldan saga dogru kopyalar 
    ;stf komutu sitringin sağdan sola doğru kopyalar
    ;cx dongu kaydedicisinin icerigini bir bir azaltir
    
    lea si,string1
    lea di,string2
    mov cx,12
    rep movsb;burada movsb byte seklinde kopyalar
             ;movsw ise 2byte seklinde kopyalar.   
                                                    
   
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
