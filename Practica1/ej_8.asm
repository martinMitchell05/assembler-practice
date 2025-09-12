# Determinar si el valor en t0 = 6 es par (guardar 1 en t1 si es par, 0 si no).

	.text
		addi t0,x0,6
		addi t2,x0,2
		
		rem t3,t0,t2 # obtiene el resto con signo de hacer t0/t2
		beq t3,x0,par # si el resto es cero entonces es par
		
		addi t1,x0,0 # si no fue cero entonces era impar
		j fin # finalizar
		
	par:
		addi t1,x0,1
	
	fin:
	