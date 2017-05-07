data segment


ends

stack segment
    dw   128  dup(0)
ends

code segment
start:


    mov ax, data
    mov ds, ax 
    
    
    ; cmp komutu karsilastirma yapar cmp ax,bx sub komutu gibi ax'i bx'den cikarir
    ; ama degeri ax'e atamak yerine bu sonucu karsilastirir.
    ; sartli dallanma ve sartsiz dallanmada cmp fonk. kullanabiliriz.
    ; jmp ise sartsiz dallanma komutudur. Hicbir sarta bakmadan 
    ; programda dallanma olur.
    
    ;   ja  buyukse komutu
    ;   jb  kucukse komutu
    ;   jae buyuk esitse
    ;   jbe kucuk esitse
    ;   jna buyuk degilse
    ;   jnb kucuk degilse
    ;   jnae    buyukesit degilse
    ;   jnbe    kucukesit degilse
    ;   jz  zero flag aktifse "BAYRAKLARIDA KOSUL OLARAK KULLANABILIRIZ       
    
    
    
    mov ax,0
    mov bx,10
    
    dongu:
    inc ax
    dec bx
    cmp bx,0
    ja dongu
    
    
    mov ax,0
    mov bx,10
    
    kosulsuz_sonsuz_dongu:    
    dongu2:
    inc ax
    dec bx
    cmp bx,0
    ja dongu2
    jmp kosulsuz_sonsuz_dongu       
    

    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
