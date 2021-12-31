
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.data

player1name         db 16, ?, 16 dup('$')
name1message        db 'Please enter player 1 name:','$'
player1score        db ?

player2name         db 16, ?, 16 dup('$')
name2message        db 'Please enter player 2 name:','$'
player2score        db ?

enterkey            db 'press enter to continue or any key to re-enter the name','$'

StartGame           db 'Please enter F2 to start:','$'
player1initial      db 16, ?, 16 dup('$')  
initial             db ?
initial1            db 'please enter the first initial points:','$'
initial2            db 'please enter the second initial points:','$'

levelselect         db 'select your level, press 1 for level 1 and 2 for level 2:','$'
player2initial      db 16, ?, 16 dup('$')

levelone            db 'you chose level one','$'   
leveltwo            db 'you chose level two','$'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
registerA_len        equ 50
registerA_width      equ 7 
registerA_start_x    equ 20
registerA_start_y    equ 50

registerB_len        equ 50
registerB_width      equ 7 
registerB_start_x    equ 20
registerB_start_y    equ 70

registerC_len        equ 50
registerC_width      equ 7 
registerC_start_x    equ 20
registerC_start_y    equ 90

registerD_len        equ 50
registerD_width      equ 7 
registerD_start_x    equ 20
registerD_start_y    equ 110
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
registerSI_len        equ 50
registerSI_width      equ 7 
registerSI_start_x    equ 90
registerSI_start_y    equ 50

registerDI_len        equ 50
registerDI_width      equ 7 
registerDI_start_x    equ 90
registerDI_start_y    equ 70

registerSP_len        equ 50
registerSP_width      equ 7 
registerSP_start_x    equ 90
registerSP_start_y    equ 90

registerBP_len        equ 50
registerBP_width      equ 7 
registerBP_start_x    equ 90
registerBP_start_y    equ 110
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
registerA2_len        equ 50
registerA2_width      equ 7 
registerA2_start_x    equ 180
registerA2_start_y    equ 50

registerB2_len        equ 50
registerB2_width      equ 7 
registerB2_start_x    equ 180
registerB2_start_y    equ 70

registerC2_len        equ 50
registerC2_width      equ 7 
registerC2_start_x    equ 180
registerC2_start_y    equ 90

registerD2_len        equ 50
registerD2_width      equ 7 
registerD2_start_x    equ 180
registerD2_start_y    equ 110
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
registerSI2_len        equ 50
registerSI2_width      equ 7 
registerSI2_start_x    equ 250
registerSI2_start_y    equ 50

registerDI2_len        equ 50
registerDI2_width      equ 7 
registerDI2_start_x    equ 250
registerDI2_start_y    equ 70

registerSP2_len        equ 50
registerSP2_width      equ 7 
registerSP2_start_x    equ 250
registerSP2_start_y    equ 90

registerBP2_len        equ 50
registerBP2_width      equ 7 
registerBP2_start_x    equ 250
registerBP2_start_y    equ 110
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
vertical_start_x       equ 160
vertical_start_y       equ 0
vertical_len           equ 170
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
horizontal_start_x     equ 0
horizontal_start_y     equ 170
horizontal_len         equ 150
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
background_len         equ 320
background_height      equ 200
.code
main proc far  
    
    mov ax, @data
    mov ds, ax

    p1_name:
        mov ax,0012h
        int 10h
        
        mov ah,2
        mov cx,0
        mov dh,0
        mov dl,0
        int 10h                 ;move cursor
        
        mov ah,9
        lea dx,name1message
        int 21h                 ;ask user to enter name
        
        mov ah,02
        mov dh,10
        mov dl,0
        mov cx,0
        int 10h                 ;move cursor
        
        mov ah,0ah
        lea dx,player1name
        int 21h                 ;take player 1 name
        
        mov ah,2
        mov dh,20
        mov dl,0
        mov cx,0
        int 10h                 ;move cursor
        
        mov ah,9
        lea dx,enterkey
        int 21h                 ;ask the user to press enter or re-enter their name
        
        mov ah,0
        int 16h                 ;get key from user
         
        cmp ah,1ch              ;if user pressed enter continue
        jnz p1_name
        
    p2_name:
    
        mov ax,0012h
        int 10h
        
        mov ah,2
        mov cx,0
        mov dh,0
        mov dl,0
        int 10h                 ;move cursor to 0,0
        
        mov ah,9
        lea dx,name2message
        int 21h                 ;ask user to enter name
        
        mov ah,02
        mov dh,10
        mov dl,0
        mov cx,0
        int 10h                 ;move cursor to row 15
        
        mov ah,0ah
        lea dx,player2name
        int 21h                 ;take player 1 name
        
        mov ah,2
        mov dh,20
        mov dl,0
        mov cx,0
        int 10h                 ;move cursor to row 20
        
        mov ah,9
        lea dx,enterkey
        int 21h                 ;ask the user to press enter or re-enter their name
        
        mov ah,0
        int 16h                 ;get key from user
         
        cmp ah,1ch              ;if user pressed enter continue
        jnz p2_name 

    F2action:
        mov ax,0012h
        int 10h
        
        mov ah,2
        mov cx,0
        mov dh,0
        mov dl,0
        int 10h                 ;move cursor
        
        mov ah,9
        lea dx,StartGame
        int 21h                 ;ask user to enter F2 to enter the game
        
        mov ah,02
        mov dh,10
        mov dl,0
        mov cx,0
        int 10h                 ;move cursor
        
        mov ah,0h
        int 16h                 ;wait for user to enter F2
         
        cmp ah,60d              ;if user enters F2 continue
        jnz F2action 
        
    initialpoints:
        mov ax,0012h
        int 10h
         
        mov ah,9
        lea dx,initial1
        int 21h
          
        mov ah,02
        mov dh,10
        mov dl,0
        mov cx,0
        int 10h                 ;move cursor
        
        mov ah,0ah
        lea dx,player1initial
        int 21h                 ;take player 1 initial
        
        mov ax,0012h
        int 10h
         
        mov ah,9
        lea dx,initial2
        int 21h
          
        mov ah,02
        mov dh,10
        mov dl,0
        mov cx,0
        int 10h                 ;move cursor
        
        mov ah,0ah
        lea dx,player2initial
        int 21h                 ;take player 2 initial
        
         
        mov Bh,player1initial 
        mov bl,player2initial
        cmp bh,bl
        jnz initialis2
        jz initialis1
        
     initialis1:
        mov initial,bh
        jmp lvlselect
        
     initialis2:
        mov initial,bl
        
        
    lvlselect:
    
        mov ax,0012h
        int 10h
        
        mov ah,2
        mov cx,0
        mov dh,0
        mov dl,0
        int 10h                 ;move cursor to 0,0
        
        mov ah,9
        lea dx,levelselect
        int 21h                 ;ask user to select the level
        
        mov ah,02
        mov dh,10
        mov dl,0
        mov cx,0
        int 10h                 ;move cursor to row 15
        
       
        mov ah,0
        int 16h                 ;get key from user
         
        cmp ah,2d               ;if user pressed 1 enter lvl 1
        jz lvlone
        
        
        cmp ah,3d               ;if user pressed 2 enter lvl 2
        jz lvltwo
        
        loop lvlselect 
    
      
     lvlone:  
        mov ah,9
        lea dx,levelone
        int 21h
        jmp end1
                
     lvltwo:
        mov ah,9
        lea dx,leveltwo
        int 21h
    
    end1:

    call mainscreen

main endp    

mainscreen proc near

    mov ax,0600h
    mov bh,07
    mov cx,00
    mov dx,184fh    ;clear screen

    mov ah,00
    mov al,13h
    int 10h         ;setup graphics mode

    mov ah,0bh
    mov bh,00h
    mov bl,00h
    int 10h

    call draw_background
    call draw_alu
    call draw_v_line
    ;call draw_horizontal_line

    call draw_names

    ret
    mainscreen endp

draw_background proc near
    mov cx,0
    mov dx,0

    draw_back:
        mov ah,0ch
        mov al,03h                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        cmp ax,background_len
        JNG draw_back                   ;cx - register start in x = register length

    mov cx,0
    inc dx
    mov ax,dx
    cmp ax,background_height
    JNG draw_back                        ;dx - register start in y = register width

ret
draw_background endp

draw_alu proc near

    mov cx,registerA_start_x
    mov dx,registerA_start_y

    draw_registerA:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerA_start_x
        cmp ax,registerA_len
        JNG draw_registerA               ;cx - register start in x = register length

    mov cx,registerA_start_x
    inc dx
    mov ax,dx
    sub ax,registerA_start_y
    cmp ax,registerA_width
    JNG draw_registerA                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerB_start_x
    mov dx,registerB_start_y
    
    draw_registerB:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerB_start_x
        cmp ax,registerB_len
        JNG draw_registerB               ;cx - register start in x = register length

    mov cx,registerB_start_x
    inc dx
    mov ax,dx
    sub ax,registerB_start_y
    cmp ax,registerB_width
    JNG draw_registerB                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerC_start_x
    mov dx,registerC_start_y

    draw_registerC:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerC_start_x
        cmp ax,registerC_len
        JNG draw_registerC               ;cx - register start in x = register length

    mov cx,registerC_start_x
    inc dx
    mov ax,dx
    sub ax,registerC_start_y
    cmp ax,registerC_width
    JNG draw_registerC                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerD_start_x
    mov dx,registerD_start_y

    draw_registerD:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerD_start_x
        cmp ax,registerD_len
        JNG draw_registerD               ;cx - register start in x = register length

    mov cx,registerD_start_x
    inc dx
    mov ax,dx
    sub ax,registerD_start_y
    cmp ax,registerD_width
    JNG draw_registerD                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerSI_start_x
    mov dx,registerSI_start_y

    draw_registerSI:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerSI_start_x
        cmp ax,registerSI_len
        JNG draw_registerSI               ;cx - register start in x = register length

    mov cx,registerSI_start_x
    inc dx
    mov ax,dx
    sub ax,registerSI_start_y
    cmp ax,registerSI_width
    JNG draw_registerSI                   ;dx - register start in y = register width
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerDI_start_x
    mov dx,registerDI_start_y

    draw_registerDI:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerDI_start_x
        cmp ax,registerDI_len
        JNG draw_registerDI               ;cx - register start in x = register length

    mov cx,registerDI_start_x
    inc dx
    mov ax,dx
    sub ax,registerDI_start_y
    cmp ax,registerDI_width
    JNG draw_registerDI                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
    mov cx,registerSP_start_x
    mov dx,registerSP_start_y

    draw_registerSP:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerSP_start_x
        cmp ax,registerSP_len
        JNG draw_registerSP               ;cx - register start in x = register length

    mov cx,registerSP_start_x
    inc dx
    mov ax,dx
    sub ax,registerSP_start_y
    cmp ax,registerSP_width
    JNG draw_registerSP                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov cx,registerBP_start_x
    mov dx,registerBP_start_y

    draw_registerBP:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerBP_start_x
        cmp ax,registerBP_len
        JNG draw_registerBP               ;cx - register start in x = register length

    mov cx,registerBP_start_x
    inc dx
    mov ax,dx
    sub ax,registerBP_start_y
    cmp ax,registerBP_width
    JNG draw_registerBP                   ;dx - register start in y = register width
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerA2_start_x
    mov dx,registerA2_start_y

    draw_registerA2:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerA2_start_x
        cmp ax,registerA2_len
        JNG draw_registerA2               ;cx - register start in x = register length

    mov cx,registerA2_start_x
    inc dx
    mov ax,dx
    sub ax,registerA2_start_y
    cmp ax,registerA2_width
    JNG draw_registerA2                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerB2_start_x
    mov dx,registerB2_start_y
    
    draw_registerB2:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerB2_start_x
        cmp ax,registerB2_len
        JNG draw_registerB2               ;cx - register start in x = register length

    mov cx,registerB2_start_x
    inc dx
    mov ax,dx
    sub ax,registerB2_start_y
    cmp ax,registerB2_width
    JNG draw_registerB2                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerC2_start_x
    mov dx,registerC2_start_y

    draw_registerC2:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerC2_start_x
        cmp ax,registerC2_len
        JNG draw_registerC2               ;cx - register start in x = register length

    mov cx,registerC2_start_x
    inc dx
    mov ax,dx
    sub ax,registerC2_start_y
    cmp ax,registerC2_width
    JNG draw_registerC2                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerD2_start_x
    mov dx,registerD2_start_y

    draw_registerD2:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerD2_start_x
        cmp ax,registerD2_len
        JNG draw_registerD2               ;cx - register start in x = register length

    mov cx,registerD2_start_x
    inc dx
    mov ax,dx
    sub ax,registerD2_start_y
    cmp ax,registerD2_width
    JNG draw_registerD2                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerSI2_start_x
    mov dx,registerSI2_start_y

    draw_registerSI2:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerSI2_start_x
        cmp ax,registerSI2_len
        JNG draw_registerSI2               ;cx - register start in x = register length

    mov cx,registerSI2_start_x
    inc dx
    mov ax,dx
    sub ax,registerSI2_start_y
    cmp ax,registerSI2_width
    JNG draw_registerSI2                   ;dx - register start in y = register width
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerDI2_start_x
    mov dx,registerDI2_start_y

    draw_registerDI2:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerDI2_start_x
        cmp ax,registerDI2_len
        JNG draw_registerDI2               ;cx - register start in x = register length

    mov cx,registerDI2_start_x
    inc dx
    mov ax,dx
    sub ax,registerDI2_start_y
    cmp ax,registerDI2_width
    JNG draw_registerDI2                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
    mov cx,registerSP2_start_x
    mov dx,registerSP2_start_y

    draw_registerSP2:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerSP2_start_x
        cmp ax,registerSP2_len
        JNG draw_registerSP2               ;cx - register start in x = register length

    mov cx,registerSP2_start_x
    inc dx
    mov ax,dx
    sub ax,registerSP2_start_y
    cmp ax,registerSP2_width
    JNG draw_registerSP2                   ;dx - register start in y = register width
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov cx,registerBP2_start_x
    mov dx,registerBP2_start_y

    draw_registerBP2:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc cx
        mov ax,cx
        sub ax,registerBP2_start_x
        cmp ax,registerBP2_len
        JNG draw_registerBP2               ;cx - register start in x = register length

    mov cx,registerBP2_start_x
    inc dx
    mov ax,dx
    sub ax,registerBP2_start_y
    cmp ax,registerBP2_width
    JNG draw_registerBP2                   ;dx - register start in y = register width
    ret
draw_alu endp

draw_v_line proc near
    mov cx,vertical_start_x
    mov dx,vertical_start_y

    draw_vertical:
        mov ah,0ch
        mov al,0fh                      ;white color
        mov bh,00h                      ;page number 0
        int 10h                         ;graphics interrupt

        inc dx
        mov ax,dx
        sub ax,vertical_start_y
        cmp ax,vertical_len
        JNG draw_vertical               ;cx - line start in x = line length
    ret
draw_v_line endp

draw_horizontal_line proc near
    mov cx,horizontal_start_x
    mov dx,horizontal_start_y

    draw_horizontal:
    mov ah,0ch
    mov al,0fh
    mov bh,00
    int 10h

    inc cx
    mov ax,cx
    sub ax,horizontal_start_x
    cmp ax,horizontal_len
    JNG draw_horizontal
    ret
draw_horizontal_line endp

draw_player1_name proc near
    mov ah,02
    mov bh,00
    mov dh,04h
    mov dl,06h
    int 10h             ;mov cursor

    mov ah,09
    lea dx,player1name
    int 21h
    ret
draw_player1_name endp

draw_player2_name proc near
    mov ah,02
    mov bh,00
    mov dh,04h
    mov dl,1ah
    int 10h             ;move cursor

    mov ah,09
    lea dx,player2name
    int 21h
    ret
draw_player2_name endp
end main



