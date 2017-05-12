.data 
     sonuc db ?
.code
mov ah,01
int 21h
    sub ah,ah    
    sub al,30h
    mov cl,al
    don:
    add bl,cl
    dec cl
    jnz don
    mov sonuc, bl
    add sonuc,30h
    mov ah,06
    mov bh,07
    mov cx,0
    mov dx,184fh
    int 10h
    mov ah,02
    mov dl, sonuc   
    int 21h
    mov ah,04ch
    int 21h
