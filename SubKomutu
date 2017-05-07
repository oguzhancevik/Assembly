data segment
    
degisken dw 7    

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:

    mov ax, data
    mov ds, ax   
                  
    mov ax,5h
    sub ax,3h
    sub degisken,ax              
                  
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
