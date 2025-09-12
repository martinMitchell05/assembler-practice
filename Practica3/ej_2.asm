# Escribe una función recursiva que calcule el factorial de un número.

	.data
		n: .word 4
	
	.text
	
	.globl main
	
	main:
		lw a0,n
		add a1,a1,a0
		
		jal factorial
		
		j fin
		
	
	factorial:
	
		addi a1,a1,-1
		
		beq a1,x0,retorna
		
		mul a0,a0,a1
		j factorial
		
	retorna:
		ret
		
	fin:
	
		
		
		