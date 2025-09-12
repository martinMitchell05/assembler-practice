# Rotar el valor en t0 = 13 (0b1101), 1 bit a la derecha (el bit que sale por la derecha entra por la izquierda).
# 	¿Cómo se vería afectado el pipeline si se repite la rotación en un bucle?

	.text
		addi t0,x0,13
		
		srli t1,t0,1
		
		slli t2,t0,3
		
		or t3,t1,t2
		