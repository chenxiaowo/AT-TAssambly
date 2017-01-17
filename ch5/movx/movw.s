.section .text
.globl _start
_start:
  movw %ax,%bx
  int $0x80
