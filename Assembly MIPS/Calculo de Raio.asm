.data

msg1:    .asciiz "Digite o valor do raio do circulo "
msg2:    .asciiz "Raio digitado e: "
msg3:    .asciiz "Area do circulo e: "
newline: .asciiz "\n"
pi:      .double 3.141592653589793
const:   .double 100.00

.text

.globl main


main: 
li $v0, 4
la $a0, msg1
syscall 

li $v0, 4
la $a0, newline
syscall

li $v0, 4
la $a0, msg2
syscall

li $v0, 7 # read_double
syscall # radius <- user input

la $a0, pi

l.d $f12, 0($a0) # a := pi
mul.d $f12, $f12, $f0 # a := a * r
mul.d $f12, $f12, $f0 # a := a * r

li $v0, 4
la $a0, msg3
syscall

li $v0, 3 # print_double
syscall # print area

     
    
    
  
   
      

        
     
     
     
     
     
     
