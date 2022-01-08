ax1_x                   equ 6
ax1_y                   equ 7

bx1_x                   equ 6
bx1_y                   equ 9

cx1_x                   equ 6
cx1_y                   equ 12

dx1_x                   equ 6
dx1_y                   equ 15

si1_x                   equ 12
si1_y                   equ 7

di1_x                   equ 12
di1_y                   equ 9

sp1_x                   equ 12
sp1_y                   equ 11

bp1_x                   equ 12
bp1_y                   equ 13

ax2_x                   equ 16
ax2_y                   equ 7

bx2_x                   equ 16
bx2_y                   equ 11

cx2_x                   equ 16
cx2_y                   equ 13

dx2_x                   equ 16
dx2_y                   equ 15

si2_x                   equ 16
si2_y                   equ 7

di2_x                   equ 16
di2_y                   equ 9

sp2_x                   equ 16
sp2_y                   equ 11

bp2_x                   equ 16
bp2_y                   equ 13

draw_al_p1 proc near
    mov al, ALI_AL
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,ax1_x
    mov dh,ax1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_al1
    print1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,ax1_x
    mov dh,ax1_y
    inc dl
    int 10h
    
    cmp ch,9
    JNG print2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_al1
    print2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_al1:
draw_al_p1 endp

draw_ah_p1 proc near
    mov al, ALI_AH
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,ax1_x
    sub dl,2
    mov dh,ax1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print_ah1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_ah1
    print_ah1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,ax1_x
    dec dl
    mov dh,ax1_y
    int 10h
    
    cmp ch,9
    JNG print_ah2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_ah1
    print_ah2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_ah1:
draw_ah_p1 endp

draw_bl_p1 proc near
    mov al, ALI_BL
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,bx1_x
    mov dh,bx1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print_bl1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_bl1
    print_bl1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,bx1_x
    inc dl
    mov dh,bx1_y
    int 10h
    
    cmp ch,9
    JNG print_bl2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_al1
    print_bl2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_bl1:
draw_bl_p1 endp

draw_bh_p1 proc near
    mov al, ALI_BH
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,bx1_x
    sub dl,2
    mov dh,registerB_start_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print_bh1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_bh1
    print_bh1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,bx1_x
    sub dl,1
    mov dh,bx1_y
    int 10h
    
    cmp ch,9
    JNG print_bh2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_bh1
    print_bh2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_bh1:
draw_bh_p1 endp

draw_cl_p1 proc near
    mov al, ALI_CL
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,cx1_x
    mov dh,cx1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print_cl1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_cl1
    print_cl1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,cx1_x
    inc dl
    mov dh,cx1_y
    int 10h
    
    cmp ch,9
    JNG print_cl2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_cl1
    print_cl2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_cl1:
draw_cl_p1 endp

draw_ch_p1 proc near
    mov al, ALI_CH
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,cx1_x
    sub dl,2
    mov dh,cx1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print_ch1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_ch1
    print_ch1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,cx1_x
    sub bl,1
    mov dh,cx1_y
    int 10h
    
    cmp ch,9
    JNG print_ch2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_ch1
    print_ch2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_ch1:
draw_ch_p1 endp

draw_dl_p1 proc near
    mov al, ALI_DL
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,dx1_x
    mov dh,dx2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print_dl1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_dl1
    print_dl1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,dx1_x
    inc dl
    mov dh,dx1_y
    int 10h
    
    cmp ch,9
    JNG print_dl2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_dl1
    print_dl2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_dl1:
draw_dl_p1 endp

draw_dh_p1 proc near
    mov al, ALI_DH
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,dx1_x
    sub dl,2
    mov dh,dx1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print_dh1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_dh1
    print_dh1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,dx1_x
    sub dl,1
    mov dh,dx1_y
    int 10h
    
    cmp ch,9
    JNG print_dh2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_dh1
    print_dh2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_dh1:
draw_dh_p1 endp

draw_al_p2 proc near
    mov al, AHMED_AL
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,ax2_x
    mov dh,ax2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1_2
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end2_al1
    print1_2:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,ax2_x
    mov dh,ax2_y
    int 10h
    
    cmp ch,9
    JNG print2_2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end2_al1
    print2_2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end2_al1:
draw_al_p2 endp

draw_ah_p2 proc near
    mov al, AHMED_AH
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,ax2_x
    sub dl,2
    mov dh,ax2_x
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print2_ah1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_ah2
    print2_ah1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,ax2_x
    sub dl,1
    mov dh,ax2_y
    int 10h
    
    cmp ch,9
    JNG print2_ah2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_ah2
    print2_ah2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_ah2:
draw_ah_p2 endp

draw_bl_p2 proc near
    mov al, AHMED_BL
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,bx2_x
    mov dh,bx2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print2_bl1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_bl2
    print2_bl1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,bx2_x
    inc dl
    mov dh,bx2_y
    int 10h
    
    cmp ch,9
    JNG print2_bl2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_bl2
    print2_bl2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_bl2:
draw_bl_p2 endp

draw_bh_p2 proc near
    mov al, AHMED_BH
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,bx2_x
    sub dl,2
    mov dh,registerB_start_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print2_bh1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_bh1
    print2_bh1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,bx2_x
    sub dl,1
    mov dh,bx2_y
    int 10h
    
    cmp ch,9
    JNG print2_bh2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_bh2
    print2_bh2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_bh2:
draw_bh_p2 endp

draw_cl_p2 proc near
    mov al, AHMED_CL
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,cx2_x
    mov dh,cx2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print2_cl1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_cl2
    print2_cl1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,cx2_x
    inc dl
    mov dh,cx2_y
    int 10h
    
    cmp ch,9
    JNG print2_cl2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_cl2
    print2_cl2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_cl2:
draw_cl_p2 endp

draw_ch_p2 proc near
    mov al, AHMED_CH
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,cx2_x
    sub dl,2
    mov dh,cx2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print2_ch1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_ch2
    print2_ch1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,cx2_x
    dec dl
    mov dh,cx2_y
    int 10h
    
    cmp ch,9
    JNG print2_ch2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_ch2
    print2_ch2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_ch2:
draw_ch_p2 endp

draw_dl_p2 proc near
    mov al, AHMED_DL
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,dx2_x
    mov dh,dx2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print2_dl1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_dl2
    print2_dl1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,dx2_x
    inc dl
    mov dh,dx2_y
    int 10h
    
    cmp ch,9
    JNG print2_dl2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_dl2
    print2_dl2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_dl2:
draw_dl_p2 endp

draw_dh_p2 proc near
    mov al, AHMED_DH
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,dx2_x
    sub dl,2
    mov dh,dx2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print2_dh1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_dh2
    print2_dh1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,dx2_x
    sub dl,1
    mov dh,dx2_y
    int 10h
    
    cmp ch,9
    JNG print2_dh2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_dh2
    print2_dh2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_dh2:
draw_dh_p2 endp

draw_si_p1 proc near
    mov ax,ALI_SI
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,si1_x
    mov dh,si1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1_si1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_si1
    print1_si1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,si1_x
    inc dl
    mov dh,si1_y
    int 10h
    
    cmp ch,9
    JNG print1_si4
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_si1
    print1_si4:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax,ALI_SI
    mov al,ah
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,si1_x
    sub dl,2
    mov dh,si1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print12_si1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_si1
    print12_si1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,si1_x
    dec dl
    mov dh,si1_y
    int 10h
    
    cmp ch,9
    JNG print12_si2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_si1
    print12_si2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h


    end_si1:
ret
draw_si_p1 endp

draw_si_p2 proc near
    mov ax,AHMED_SI
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,si2_x
    mov dh,si2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1_si2
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_si2
    print1_si2:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,si2_x
    inc dl
    mov dh,si2_y
    int 10h
    
    cmp ch,9
    JNG print2_si2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_si1
    print2_si2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax,AHMED_SI
    mov al,ah
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,si2_x
    sub dl,2
    mov dh,si2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print3_si2
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_si2
    print3_si2:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,si2_x
    dec dl
    mov dh,si2_y
    int 10h
    
    cmp ch,9
    JNG print4_si2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_si2
    print4_si2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h


    end_si2:
ret
draw_si_p2 endp

draw_di_p1 proc near
    mov ax,ALI_DI
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,di1_x
    mov dh,di2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1_di1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_di1
    print1_di1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,di1_x
    inc dl
    mov dh,di1_y
    int 10h
    
    cmp ch,9
    JNG print2_di1
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_di1
    print2_di1:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax,ALI_DI
    mov al,ah
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,di1_x
    sub dl,2
    mov dh,di1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print3_di1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_di1
    print3_di1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,di1_x
    dec dl
    mov dh,di1_y
    int 10h
    
    cmp ch,9
    JNG print4_di1
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_di1
    print4_di1:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h


    end_di1:
ret
draw_di_p1 endp

draw_di_p2 proc near
    mov ax,AHMED_DI
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,di2_x
    mov dh,di2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1_di2
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_di2
    print1_di2:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,di2_x
    inc dl
    mov dh,di2_y
    int 10h
    
    cmp ch,9
    JNG print2_di2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_di1
    print2_di2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax,AHMED_DI
    mov al,ah
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,di2_x
    mov dh,di2_y
    sub dl,2
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print3_di2
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_di2
    print3_di2:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,di2_x
    dec dl
    mov dh,di2_y
    int 10h
    
    cmp ch,9
    JNG print4_di2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_di2
    print4_di2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h


    end_di2:
ret
draw_di_p2 endp

draw_sp_p1 proc near
    mov ax,ALI_SP
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,sp1_x
    mov dh,sp1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1_sp1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_sp1
    print1_sp1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,sp1_x
    inc dl
    mov dh,sp1_y
    int 10h
    
    cmp ch,9
    JNG print2_sp1
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_sp1
    print2_sp1:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax,ALI_SP
    mov al,ah
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,sp1_x
    mov dh,sp1_y
    sub dl,2
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print3_sp1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_sp1
    print3_sp1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,sp1_x
    dec dl
    mov dh,sp1_y
    int 10h
    
    cmp ch,9
    JNG print4_sp1
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_sp1
    print4_sp1:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h


    end_sp1:
ret
draw_sp_p1 endp

draw_sp_p2 proc near
    mov ax,AHMED_SP
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,sp2_x
    mov dh,sp2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1_sp2
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_sp2
    print1_sp2:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,sp2_x
    inc dl
    mov dh,sp2_y
    int 10h
    
    cmp ch,9
    JNG print2_sp2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_sp1
    print2_sp2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax,AHMED_SP
    mov al,ah
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,sp2_x
    mov dh,sp2_y
    sub dl,2
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print3_sp2
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_sp2
    print3_sp2:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,sp2_x
    dec dl
    mov dh,sp2_y
    int 10h
    
    cmp ch,9
    JNG print4_sp2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_sp2
    print4_sp2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h


    end_sp2:
ret
draw_sp_p2 endp

draw_bp_p1 proc near
    mov ax,ALI_BP
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,bp1_x
    mov dh,bp1_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1_bp1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_bp1
    print1_bp1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,bp1_x
    inc dl
    mov dh,bp1_y
    int 10h
    
    cmp ch,9
    JNG print2_bp1
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_bp1
    print2_bp1:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax,ALI_BP
    mov al,ah
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,bp1_x
    mov dh,bp1_y
    sub dl,2
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print3_bp1
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_bp1
    print3_bp1:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,bp1_x
    dec dl
    mov dh,bp1_y
    int 10h
    
    cmp ch,9
    JNG print4_bp1
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_bp1
    print4_bp1:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h


    end_bp1:
ret
draw_bp_p1 endp

draw_bp_p2 proc near
    mov ax,AHMED_BP
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,bp2_x
    mov dh,bp2_y
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print1_bp2
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_bp2
    print1_bp2:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,bp2_x
    inc dl
    mov dh,bp2_y
    int 10h
    
    cmp ch,9
    JNG print2_bp2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_bp1
    print2_bp2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ax,AHMED_BP
    mov al,ah
    mov ah,00
    mov bl,16
    div bl             ; al = ax/16    ah = ax % 10 
    mov cl, al
    mov ch, ah

    mov ah,02
    mov dl,bp2_x
    mov dh,bp2_y
    sub dl,2
    int 10h            ;mov cusror
    
    cmp cl,9
    JNG print3_bp2
    add cl,87
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp end_bp2
    print3_bp2:
    add cl,48

    mov ah,2
    mov dl,cl
    int 21h
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,02
    mov dl,bp2_x
    dec dl
    mov dh,bp2_y
    int 10h
    
    cmp ch,9
    JNG print4_bp2
    add ch,87
    
    mov ah,2
    mov dl,ch
    int 21h

    jmp end_bp2
    print4_bp2:
    add ch,48

    mov ah,2
    mov dl,ch
    int 21h

    end_bp2:
ret
draw_bp_p2 endp

