# Rotar el valor en t0 = 13 (0b1101), 1 bit a la derecha --> 1110
# (el bit que sale por la derecha entra por la izquierda). 1000 --> 0100; 1100 --> 0110

.text
    li t0, 13
    li t1, 1
    li t2, 3 # bits donde voy a tener que correr para insertar el que sale. (n - 1)
    
    and a0, t0, t1 # ver que era el bit que sale
    srli t0, t0, 1 # desplazar a la derecha t0
    sll t1, a0, t2 # desplazar a la izquierda t2 bits el bit que salio
    
    xor t0, t0, t1 # xor da como resultado la rotacion