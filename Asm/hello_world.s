	# Compile with GNU Assembler

	.text
	
	.global _start

_start:
	mov $1, %rbx # Invoke sys_write
	mov $1, %rax # 
	mov $string, %rsi # Actual string second argument
	mov $14, %rdx # Pass the number of bytes as third argument
	syscall

	mov $60,  %rax # Invoke sys_exit
	xor %rdi, %rdi  # Set return to 0
	syscall

	.data
string:
	.ascii	"Hello, World!\n"
