%include 'in_out.asm'
SECTION .data
 msg2 db "Наименьшее число: ", 0h
 A dd '84'
 B dd '32'
 C dd '77'
SECTION .bss
 min resb 1
SECTION .text
 GLOBAL _start
_start:
 
 mov eax, B
 call atoi
 mov [B], eax
 mov ecx, [A]
 mov [min], ecx
 cmp ecx, [C]
 jl check_B
 mov ecx, [C]
 mov [min], ecx
  
check_B:
 mov eax, min
 call atoi
 mov [min], eax
  
 mov ecx, [min]
 cmp ecx, [B]
 jl fin
 mov ecx, [B]
 mov [min], ecx
  
fin:
 mov eax,msg2
 call sprint
 mov eax,[min]
 call iprintLF
 call quit
