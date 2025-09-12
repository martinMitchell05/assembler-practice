	.data
	# Para acceder a un elemento: direccion_base + indice * tamaño_elemento
	
		arreglo: .word 10, 20, 30, 40, 50 # 5 elementos de 4 bytes cada
		
	.text
		la t0, arreglo
		li t1, 2
		slli t2, t1, 2 # t2 = indice * 4 bytes (tamaño)
		add t3, t0, t2
		lw a0, 0(t3)
		