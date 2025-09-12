# Contar cuántos bits están en 1 en t0 = 21(b10101) y guardar el resultado en t1.
.text
	#li t0,0x10101
	addi t2,x0,1
	#obtener el primer bit MSB
	
	beq t0,t2,esUno
	 
esCero:
	#obtener el siguiente bit
	beq t0,t2,esUno
	
	j fin
	
esUno:
	#si es uno sumar
	addi t1,t1,1
	j esCero

fin: