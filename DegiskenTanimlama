
data segment 

a db 2,8,7  ; db (define bayt) yada dw kullanilir
 
;data segmentte degisken tanimlama dizi ornegin 
;a dw 5 dup(?)   seklinde tanimlanir    
; a dw ? bu sekildede tanimlama mevcut
; dizi db "merhaba assembly"

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:                    

    mov ax, @data
    mov di, ax
   
    
    mov dx,offset a  ;offset adresleme 
    lea si,a ; offset adresleme ile ayni
    
    mov ax,5h
    mov bx,ax   ; kaydedici adresleme
    mov al,a
    mov ax,[di]    ; dolayli adresleme
    mov ax,[di+2]
    mov ax,[si]


    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
