.section .data

.section .text

.globl _start

_start:
	movl $1, %eax
	addl $2, %eax
	movl %eax, %ebx
	movl $1, %eax
	int $0x80		
