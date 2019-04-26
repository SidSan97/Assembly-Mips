.data

const1:  .word 2
const2:  .word 10
const3:  .word 200
const4:  .word 32
Z:       .word 0
Y:       .word 0
num:     .word 0     # Variavel referente ao valor que o usuario vai digitar

.text
la $s0, num 
li $v0, 5
syscall
move $s0, $v0

la $t1, const1  
la $t2, const2  
la $t3, const3  
la $t4, const4 
la $t5, Z       
la $t6, Y      

slt $t0, $s0, $t2
slt $t0, $t1, $s0
bne $t0, $zero, ELSE

j EXIT
add $t5, $s0, $t3
mul $t7, $t5, $t5 

la $a0, ($t5)
la $a0, ($t7) 

ELSE:
add $t5, $s0, $t4

EXIT:
li $v0, 10
syscall
