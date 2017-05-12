data1 segment
    veri1 db 5
    veri2 db 8
    toplam db 0
ends

code segment
    start:
    mov ax,data1
    mov ds,ax
    lea si,veri1
    lea di,veri2
    mov cl,[di]
    mov ch,[si]
    call topla
    mov ax,4c00h
    int 21h
    topla proc near
        lea si,toplam
        add cl,ch
        mov [si],cl
        ret
        topla endp
ends; segment sonu
end start; program sonu
