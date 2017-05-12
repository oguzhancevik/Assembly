
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

cld
mov bx,0400h
lea si,kullanici
mov cx,03d

gir:
mov ah,01h
int 21h
mov [bx],al
inc bx
loop gir

mov cx,05d

karsilastir:
push cx
mov di, 0400h
mov cx,03d
repe cmpsb
jz bulundu
pop cx
loop karsilastir
jnz bulunamadi

bulundu:
mov dl,'E'
mov ah,02h
int 21h
jmp cikis

bulunamadi:
mov dl,'H'
mov ah,02h
int 21h
jmp cikis

cikis:
ret
kullanici db 'ku1ku2ku3ku4ku5'
