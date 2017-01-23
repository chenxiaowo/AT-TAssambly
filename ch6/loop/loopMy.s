.section .data
  output:
    .asciz "The value is :%d\n"
.section .text
  .globl _start
_start:
  nop
  movl $100,%ecx
  movl $0,%eax
