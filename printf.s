.intel_syntax noprefix
.global _start

_start:
mov r8, [rsp+16]
mov rbx, 0

loop:
cmp byte ptr [r8+rbx], 0
je done
lea rsi, [r8+rbx]
mov rax, 1
mov rdi, 1
mov rdx, 1
syscall
inc rbx
jmp loop

done:
mov rax, 60
mov rdi, 0
syscall
