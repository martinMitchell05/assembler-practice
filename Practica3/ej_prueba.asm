	.data
	valor1: .word 10
	valor2: .word 20
	
	.text

	.globl main
	main:
# Push de valores al stack
	lw t0, valor1
 # Cargar valor1 en t0
	addi sp, sp, -4
 # Reservar espacio en stack
	sw t0, 0(sp)
 # Guardar t0 en stack
	lw t1, valor2
	addi sp, sp, -4
	sw t1, 0(sp)
# Cargar valor2 en t1
# Reservar espacio
# Guardar t1 en stack

# Pop de valores del stack
	lw t2, 0(sp)
 # Cargar último valor
	addi sp, sp, 4
 # Liberar espacio
	lw t3, 0(sp)
	addi sp, sp, 4
# Cargar primer valor
# Liberar espacio