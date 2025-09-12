# Calcula la suma de todos los elementos de un array.

	.data
		array: .word 3,7,2,9,5,1
		length: .word 6
		result: .word 0
	
	.text
	.globl main
		
	
	main:
			lw a0,length
			la a1,array
			lw a2,result
			
			jal suma_array
			
			j end
		
		suma_array:
			
			beq a0,x0,retorna
			
			lw t0,0(a1)
			
			add a2,a2,t0
			
			addi a1,a1,4
			addi a0,a0,-1
			
			j suma_array
			
			
		retorna:
			ret
			
		end:
		
			
			