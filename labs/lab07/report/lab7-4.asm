%include 'in_out.asm'

SECTION .data
msg1: db 'Введите x: ', 0h
msg2: db 'Введите a: ', 0h

SECTION .bss
max resb 10
x resb 10
a resb 10

SECTION .text
GLOBAL _start

_start:
mov eax, msg1
call sprint

mov ecx, x
mov edx, 10
call sread

mov eax, x
call atoi
mov [x], eax

mov eax, msg2
call sprint

mov ecx, a
call sread

mov eax, a
call atoi
mov [a], eax

mov ebx, 8
cmp [a], ebx
jb check

mov eax, [a]
mov ebx, 7
sub eax, ebx
call iprintLF
call quit

check:
mov eax, [a]
mov ebx, [x]
mul ebx
call iprintLF
call quit
