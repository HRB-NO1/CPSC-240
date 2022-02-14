;Author: Keith Sun
;Program: Traingle
;Program Goal: Make a hybrid program where the main module is written in X86 assem-bly.  The program 
;takes as input the lengths of two sides of a triangle and the size of the included angle in 
;degrees.  Using those data the program computes the area of the triangle and the length of 
;the perimeter of the triangle and displays the results in a friendly readable for-mat.

extern printf
extern scanf
extern sin
extern cos

global compute_triangle

segment .data

pi: dq 3.1415926

welcome: db "Input side1 side2 angle: ", 0
side1_side2_angle: db "%lf %lf %lf", 0
out_input: db `\nside1: %lf size2: %lf angle: %lf°\n`, 0

segment .bss

perimeter: resq 1; resq = reserve n qwords (here, n = 1)
area: resq 1

segment .text

compute_triangle:
push rbp
mov rbp, rsp
push rbx
push rsi
push rdx
push rcx
push r8
push r9
push r10
push r11
push r12
push r13
push r14
push r15
push rbx
pushf

;begin

mov rax, 0
mov rdi, welcome                             ;"Input side1 side2 angle: "
call printf

push qword 1
push qword 1
push qword 1
push qword 1

mov rdi, side1_side2_angle ; address to format str
mov rsi, rsp ;side1
mov rdx, rsp ;side2
add rdx, 8
mov rcx, rsp ;angle
add rcx, 16
call scanf

; move sides and angle into xmm for calculation
movsd xmm15, [rsp] ;side1
pop rax
movsd xmm14, [rsp] ;side2
pop rax
movsd xmm13, [rsp] ;angle
pop rax
pop rax ;relocate rsp

;check if 3 nums are bigger than 0
mov rax,0
push rax
movesd xmm7,[rsp]
ucomisd xmm15,xmm7 ;side 1,0000000
jb exit


mov rdi, out_input
mov rax, 3
movsd xmm0, xmm15
movsd xmm1, xmm14
movsd xmm2, xmm13
call printf



;end


popf
pop rbx
pop r15
pop r14
pop r13
pop r12
pop r11
pop r10
pop r9
pop r8
pop rcx
pop rdx
pop rsi
pop rdi
pop rbp
ret
