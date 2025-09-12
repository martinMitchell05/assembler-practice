.data 
    result_suma: .word 0
    result_resta: .word 0
    result_mul: .word 0
    result_div: .word 0
    
.text
    addi t0,x0,500
    addi t1,x0,200
    
    la t2, result_suma
    add a0,t0,t1
    sw a0, 0(t2)
    
    la t2, result_resta
    sub a0, t0, t1
    sw a0, 0(t2)
    
    la t2, result_mul
    mul a0, t0, t1
    sw a0, 0(t2)
    
    la t2, result_div
    div a0, t0, t1
    sw a0, 0(t2)
    