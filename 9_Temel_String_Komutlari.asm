data segment                     

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    
    
    ;bu projede string islemler yapacagiz
    ;movs komutu string2 icindeki veriyi string1'e atar
    ;cmps iki sirting degiskenini karsilastirir
    ;scas komutu al registeri icindeki karakter ile stringimizi kiyaslama yapar
    ;loads komutu stringimizin karakterini al registerina kopyaliyor
    ;stos komutu al registerindeki karakteri stringimize kopyaliyor
    
    ;string islemlerinde kaynak ve hedef islemleri olacagindan
    ;si ve di register'larini kullaniyoruz
    
                       

    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
