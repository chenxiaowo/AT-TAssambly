#遍历数组
.section .data
  values:
    .int 10,15,20,25,30,35,40,45,50,55,60
.section .text
.globl _start
_start:
  nop
  movl $2,%edi
  movl values(,%edi,4),%eax
  int $0x80
