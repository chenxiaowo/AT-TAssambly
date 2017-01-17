.section .text
.globl _start
_start:
  movl %eax,%ebx
  int $0x80
