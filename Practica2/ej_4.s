# Escriba un programa que reciba un número y cuente regresivamente hasta 0 con un WHILE.
# ¿Cómo afecta el salto condicional?
# ¿Cuántos ciclos tarda en ejecutarse un bucle?
.data
    n: .word 30
    
.text

    lw t0, n
    
    while:
        beq t0,x0,fin
        
        addi t0, t0, -1
        
        j while
        
fin:
    nop