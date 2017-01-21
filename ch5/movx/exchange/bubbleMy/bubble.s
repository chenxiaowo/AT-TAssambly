.code32
.section .data
  values:
  .int 23,44,55,212,154,333,233,56,9,22
.section .text
  .globl _start
_start:
  nop
  movl $values,%esi
  movl $9,%ecx
  movl $9,%ebx
loop:
  movl 4(%esi),%eax
  cmp (%esi),%eax
  jg skip
  xchg %eax,(%esi)
  movl %eax,4(%esi)
skip:
  addl $4,%esi
  dec %ecx
  jnz loop
  dec %ebx
  je end
  movl %ebx,%ecx
  movl $values,%esi
  jmp loop
end:
  movl $1,%eax
  movl $0,%ebx
  int $0x80
