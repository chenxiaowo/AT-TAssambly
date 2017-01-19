.section .text
.globl _start
_start:
  movb %al,%bl
  int $0x80
