# Calcular el valor absoluto de t0 = -42 y guardarlo en t1.
# ¿Qué ocurre en el pipeline si t0 es positivo? ---> se debe mantener el mismo valor.
.text
	addi t0,x0,42
	blt t0,x0,negativo #si es menor va al "offset" 'negativo'
	
# si se dio que no era menor va a ir directo al offset 'noNegativo'
# esto funciona como una estructura if-else
noNegativo:
	add t1,x0,t0
	j end

negativo:
	sub t1,x0,t0

end:
