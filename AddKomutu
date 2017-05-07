data segment

a dw 8

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax,@data
    mov ds,ax 

    mov ax,5h
    add ax,10h
    
    mov bx,2h
    add bx,ax
    add ax,a
    add a,2h ; degiskeni 2 ile topladik 

    


    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
