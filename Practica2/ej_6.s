# Escribir un programa que implemente un contador ascendente hasta un valor determinado usando un ciclo FOR.
# ¿Cómo afecta el salto condicional? --> en este caso no se ve afectada la ejecucion
# ¿Cuántos ciclos tarda en ejecutarse un bucle? --> 161
.data
    valor: .word 30
    
.text

    lw t0, valor
    
    li a0, 0
    
    for:
        beq a0,t0,fin
        
        addi a0, a0, 1
        
        j for
        
fin:
    nop