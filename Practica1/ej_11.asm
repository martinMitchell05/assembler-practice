# Multiplicar dos números usando sumas repetidas (ej: 3 * 4 = 3 + 3 + 3 + 3).

	.text
		addi t1,x0,4
		addi t2,x0,3
		
		add t3,t1,t1
		addi t0,x0,2
		
		blt t0,t2,while
		
		j fin
		
	while:
		add t3,t3,t1
		addi t0,t0,1
		
		blt t0,t2,while

	fin: