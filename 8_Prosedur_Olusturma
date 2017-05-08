data segment

sonuc dw ?                        

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax  
    
    ;   prosedur olusturma ornegi
    
    mov ax,5
    mov bx,3
    call topla
    mov sonuc,ax ;  prosedurdeki degeri sonuc degiskenine attik
    
    topla proc
        add ax,bx
        ret
        topla endp
    
   

    mov ax, 4c00h ; exit to operating sys
    int 21h    
ends

end start ; set entry point and stop the assembler.
