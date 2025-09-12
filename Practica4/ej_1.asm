# Escribe un programa que tome una cadena terminada en nulo (null-terminated)
# almacenada en memoria y la invierta en su misma ubicación (sin utilizar un buffer auxiliar).

	.data
		palabra: .string "perro"
		
	.text
	
	.globl main
	
	
main:
	la t0, palabra
	
	addi sp, sp, -4
	sw t0, 0(sp)