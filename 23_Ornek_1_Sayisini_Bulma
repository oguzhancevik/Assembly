.data
    deger dw 1
.code
main proc far
    mov ax,@data
    mov ds,ax
    mov cx,16 ;16 bit varsayiyoruz
    sub bx,bx ;1 sayisini bx'te tutacagiz
    don:
    shr deger,1
    jc artir
    dec cx
    jnz don
    jz exit
    artir:
    add bx,1
    dec cx
    jnz don
    jz exit
    exit:
    mov ah,4ch
    int 21h
main endp
end main
