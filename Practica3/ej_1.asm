# Implementa una función que intercambie dos valores usando solo el stack.

	.data
		valor1: .word 3
		valor2: .word 5
	
	.text
		lw a0,valor1
		lw a1,valor2
		
		jal intercambia # llama a funcion y guarda el retorno
		
		j fin
		
	intercambia:
	
		addi sp,sp,-4 # reserva espacio en stack
		sw a1,0(sp) # guarda el valor en el espacio del stack
		addi sp,sp,-4
		sw a0,0(sp)
		
		lw a1,0(sp) # lee el tope del stack
		
		addi sp,sp,4 # hace el pop, reasigna el espacio
		
		lw a0,0(sp)
		
		addi sp,sp,4
		
		ret # retorna a la llamada
	
	fin:
	
		
		