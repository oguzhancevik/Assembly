data segment
    
    sayi1 db 5
    sayi2 db 3
    toplam db 0
ends

code segment
    
    topla proc near
        mov al,sayi1
        mov bl,sayi2
        add al,bl
        mov toplam,al
        topla endp
    
start:
mov ax,data
mov ds,ax

mov si,offset sayi1
mov di,offset sayi2

call topla
mov ax,4c00h
int 21h

ends;
end start
