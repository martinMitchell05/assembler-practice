# Almacenar el máximo entre t0 = 8 y t1 = 12 en t2.
.text
	addi t0,x0,28
	addi t1,x0,12
	
	blt t0,t1,t1_max

t0_max:
	add t2,x0,t0
	j end

t1_max:
	add t2,x0,t1

end:

