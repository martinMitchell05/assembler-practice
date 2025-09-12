# Calcular t2 = t0 * t1 usando sumas repetidas. (t0 = 4 y t1= 3).
.text
	addi t0,x0,4
	addi t1,x0,3
	
	# Haciendo 3 veces 4:
	add t2,t0,t0
	add t2,t2,t0
	
	# Haciendo 4 veces 3:
	add t3,t1,t1 #2 veces
	add t3,t3,t1 #3 veces
	add t3,t3,t1 #4 veces
	