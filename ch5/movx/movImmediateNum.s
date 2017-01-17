.section .data
  .comm height,4
.section .text
.globl _start
_start:
  movl $0,%eax
  movl $0x80,%ebx
  movl $100,height
  int $0x80
