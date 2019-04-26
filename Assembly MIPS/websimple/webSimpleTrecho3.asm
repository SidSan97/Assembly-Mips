const1:  .word 2
const2:  .word 10
const3:  .word 200
const4:  .word 32
Z:       .word 0
Y:       .word 0
num:     .word 0     

la $s0, num ( $zero )
li $v0, 5, 100
move $s0, $v0 ( $zero )

la $t1, const1  ( $zero )
la $t2, const2  ( $zero )
la $t3, const3  ( $zero )
la $t4, const4  ( $zero )
la $t5, Z       ( $zero )
la $t6, Y       ( $zero )

slt $t0, $s0, $t2
slt $t0, $t1, $s0
bne $t0, $zero, ELSE

j EXIT ( $zero )
add $t5, $s0, $t3
mul $t7, $t5, $t5 

la $a0, ($t5) ( $zero )
la $a0, ($t7) ( $zero )

ELSE: ( $zero )
add $t5, $s0, $t4

EXIT:  ( $zero )
li $v0, 10 ( $zero )