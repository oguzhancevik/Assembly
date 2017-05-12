data segment
    
    dizi db 5,9,15,1,4
    enbuyuk db ?
    
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
    
    ;bu ornekte bir dizi icindeki en buyuk elemani bulan program yazacagiz
    ;jb kucukse
    ;ja buyukse
    
    lea si,[dizi]
    mov bl,[si]
    mov cx,5
    dongu:
    inc si
    cmp bl,[si]
    jb  degis
    devam:
    loop dongu
    
    jmp son
    
    degis:
    mov bl,[si]
    jmp devam
    
    son:
    mov enbuyuk,bl
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
