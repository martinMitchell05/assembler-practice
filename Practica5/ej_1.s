# Contar cuántos bits están en 1 en t0 = 21(b10101) y guardar el resultado en t1.

.text
    li t0, 21
    li a0, 1
    li a1, 5
    li t1, 0
    
    loop:
        beq a1,x0,fin
        
        and t2, t0, a0
        
        add t1, t1, t2
        
        addi a1, a1, -1
        srli t0, t0, 1
        
        j loop
        
        
fin:
    nop