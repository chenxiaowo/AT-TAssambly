#这里是对于使用完全填充的内存数据区
.section .data
buffer:
  .fill 10000
.section .text
.globl _start
_start:
  movl $1,%eax
  movl $0,%ebx
  int $0x80
