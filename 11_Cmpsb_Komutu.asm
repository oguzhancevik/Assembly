data segment 
    
    string1 db "Oguzhan"
    string2 db "Cevik"
    string3 db "Esit$"
    string4 db "EsitDegil$" 
    
    
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
    
    ;rep cx kaydedicisinin degerini bir azaltir demistik
    ;repe fonksiyonu ise esitse bir azalt demektir.
    ;repne esit degilse azalt fonksiyonudur.
    ;cmpsb ise stringleri byte seklinde karsilastirir
    ;je kosul ifadesi esitse anlami tasir
    ;jmp sartsiz dallanma komutumuz
    
    
    
    
    lea si,string1 ;
    lea di,string2 ;bu iki yerde stringlerin adreslerini index registerlere atiyoruz
    mov cx,7
    repe cmpsb    ;byte seklinde esitmi diye karsilastiriyor
    je esit       ;esitse kosulu saglanirsa esit etiketine dallanma yapilacak
    
    
    ;bu kisim ekrana yazi yazdirma komutu. Burada esit degil yazisi yazacak!
    mov ah,09
    lea dx,string4
    int 21h
    
    
    
    jmp son ;burasi sartsiz dallanma komutudur.Sayi esit olmadiginda bidaha esit diye yazmasin
            ;diye buraya sartsiz dallanma yaptik.
    
    esit:
    mov ah,09
    lea dx,string3
    int 21h
    
    son:
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
