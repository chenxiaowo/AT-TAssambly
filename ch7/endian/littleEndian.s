.section .data
  data:
  .int 0x225
  output:
  .asciz "The value is: %d\n"
.section .text
  .globl _start
_start:
  nop
  movl data,%eax
  pushl %eax
  pushl $output
  call printf
  movl $8,%esp
  movl $1,%eax
  movl $0,%ebx
  int $0x80
