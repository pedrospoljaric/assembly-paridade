.data
	prompt: .asciiz "Entre com o n�mero: "
	result: .asciiz " Resultado 0 � par, 1 � odd: resultado = "
.text
	li $v0, 4
	la $a0, prompt
	syscall

	li $v0 5
	syscall
	move $s0 $v0
	
	li $v0, 4
	la $a0, result
	syscall
	
	li $t0, 2
	div $s0, $t0
	
	mfhi $a0
	
	li $v0, 1
	syscall
