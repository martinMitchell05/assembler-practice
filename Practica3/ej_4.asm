# Encuentra el valor máximo en un array de enteros.
	.data
		array: .word 1,3,2,5,4
		length: .word 5
		
	.text
	
	.globl main
	
	main: 
		
		la a0,array
		lw a1,length
		addi a2,x0,-1
		
		jal encontrar_max
		
		j end
		
	encontrar_max:
	
		beq a1,x0,retorna
		
		lw t0,0(a0)
		
		blt a2,t0,maximo
		
		addi a0,a0,4
		addi a1,a1,-1
		j encontrar_max
		
	maximo:
		addi a1,a1,-1
		add a2,x0,t0
		addi a0,a0,4
		j encontrar_max
		
	retorna:
		add a0,x0,a2
		ret	
	
	end:
	
	