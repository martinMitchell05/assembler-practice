# Simula un registro de control de un timer mediante memory-mapped I/O. Un
# valor en una dirección específica de memoria (ej: 0x10000000) representará el valor del timer.

.data
    timer: .word 0x10000000
    limit: .word 5
    
.text
    la t0, timer
    li t1, 30
    lw a1, limit
    addi a0, x0, 0
    
    loop:
        time:
            addi t1, t1, -1
            bne t1,x0,time
    
        addi a0, a0, 1
        sw a0, 0(t0)
        
        li a7, 1
        ecall
        
        li t1, 30
        bne a0,a1,loop
        
fin:
    li a7, 10
    ecall
        