data segment
    
    dizi_a db 1,2,3,4,5,6,7,8,9,10
    dizi_b dw 10 dup<0>
ends

code segment
    procedur proc near
        mov al,cl
        mul cl
        add ax,2
        ret
    procedur endp
    
start:
mov ax,data
mov ds,ax

mov bx,10
mov si,offset dizi_a
mov di,offset dizi_b

dongu:
mov cl,[si]
call procedur
mov [di],ax
inc si
add di,2
dec bx
jnz dongu

mov ax,4c00h
int 21h

ends;

end start    
