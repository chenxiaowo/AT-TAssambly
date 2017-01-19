.code32
.section .data
  output:
    .asciz "The max value is %d\n"
.section .text
  .globl _start
  _start:
  movl $1,%eax
  movl $0,%ebx
  cmp %eax,%ebx
  movl %eax,%ecx
  cmova %ebx,%ecx
  push
