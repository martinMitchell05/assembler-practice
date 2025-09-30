# Implementa una función que recorra un array de 5 enteros y sume todos sus
# elementos usando direccionamiento indexado.

.data 
    array: .word 1,2,5,7,9
    size: .word 5
.text
    la t0, array
    lw t1, size
    addi a0,x0,0
    
suma_array:
    
    beq t1,x0,fin
    lw t2,0(t0)
    
    add a0,a0,t2
    addi t1, t1, -1
    addi t0, t0, 4
    
    j suma_array
    
    fin: 
        nop
