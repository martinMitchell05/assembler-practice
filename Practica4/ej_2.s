# Dado un arreglo de números enteros con signo, calcula su promedio, manejando
# tanto la parte entera como el resto de la división.

.data
    arreglo: .word 8, -2, 5, -4
    size: .word 4
    result_entera: .word 0
    result_resto: .word 0
    
.text
    la t0, arreglo
    lw s0, size
    li t1, 0
    li s1, 0
    mv a2, s0
    
    loop:
        beq a2, x0, promedio
    
        slli t2, t1, 2 # t2 = indice * 4 bytes
        add t3, t0, t2 # t3 = direccion del elemento
        lw a0, 0(t3)
        
        add s1, s1, a0 # suma en s1
        
        addi t1, t1, 1
        addi a2, a2, -1
        j loop
        
    promedio:
        
        div a1, s1, s0 # cociente promedio
        mul t4, a1, s0 # cociente * divisor
        sub t1, s1, t4 # resto del promedio
        
        la t0, result_entera
        sw a1, 0(t0)
        
        la t0, result_resto
        sw t1, 0(t0)