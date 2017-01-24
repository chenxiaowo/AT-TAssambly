#这里是用于测试无符号数从cl寄存器（8位）赋值到ebx寄存器中
.code32
.section .text
  .globl _start
_start:
  nop
  movl $279,%ecx
  movzx %cl,%ebx
  movl $1,%eax
  int $0x80
