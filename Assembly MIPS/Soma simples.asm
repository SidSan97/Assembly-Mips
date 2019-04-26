#By Sidnei Santiago

.data 

valor:     .float 7.0
const:     .float 1.34
msg1:      .asciiz "Informe o primeiro numero "
msg2:      .asciiz "Informe o segundo numero "
msg3:      .asciiz "Soma "
msg4:      .asciiz "Resultado descartado! "


.text 
      li $v0, 4      # Comando para ler o primeiro texto.
      la $a0, msg1   # Imprime primeira mensagem
      syscall
      
       li $v0, 6      # Obter o primeiro valor
       syscall
       movf.s $f1, $f0  # Mover o primeiro valor para '$f1'
       
       li $v0, 4      # Comando para ler o segundo valor
       la $a0, msg2   # Imprime a segunda mensagem
       syscall
       
       li $v0, 6      # Obter o segundo valor
       syscall
       movf.s $f2, $f0   # Mover o segundo valor para '$f2'
       
      lwc1 $f4, valor       # Mapeia o valor 7.0
      lwc1 $f5, const       # Mapeia o valor 1.34
                 
      add.s $f3, $f2, $f1   # Soma A($f1) + B($f2) e em '$f3'
      mul.s $f12, $f3, $f5  #Multiplica o resultado de A+B com 1,34
   
      c.lt.s  $f5, $f12      # Se o resultado for > '7.0'
      bc1t   ELSE     
      
       li $v0, 4            #Imprime: 'resultado descartado!'
       la $a0, msg4
       syscall
       
       j EXIT
       
     ELSE:               
      li $v0, 4               #Imprime 'soma'
      la $a0, msg3
      syscall
      li $v0, 2             # Imprime o produto final
      syscall
              
     EXIT:
      li $v0, 10           # Finaliza o programa
      syscall 
       
      
      
      
        
    
