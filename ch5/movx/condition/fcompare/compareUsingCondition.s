.code32
.section .data
  output:
    .asciz "The max value is %d\n"
.section .text
  .globl _start
  _start:
  movl $1,%eax
  movl $2,%ebx
  cmp %eax,%ebx
  movl %eax,%ecx
  cmova %ebx,%ecx
  pushl %ecx
  pushl $output
  call printf
  addl $8,%esp
  pushl $0
  call exit
