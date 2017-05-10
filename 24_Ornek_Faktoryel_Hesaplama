.data
    deger dw 6
.code
main proc far
     mov ax,@data
     mov ds,ax
     mov cx, deger
     mov ax,cx
     don:
      dec cx
      mul cx                    
      cmp cx,1
      jne don
      mov bx,ax   
     mov ah,4ch
     int 21h
main endp
end main
