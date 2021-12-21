.data
A: .word 6, 3, 7, 2, 0, 9, 1, 8, 4, 5
.text
.globl main
main: 
la $s0, A # Array A
li $s1, 10 # Tamanho de A
li $s2, 1 # i
li $s3, 0 # j
li $s4, 0 # v
li $t0, 0 # Endereço de A[i]
li $t1, 0 # Endereço de A[j]
li $t2, 0 # Valor de A[i]
li $t3, 0 # Valor de A[j]
Loop1: 
sll $t0, $s2, 2 # Converte i para acesso de memória
add $t0, $t0, $s0 # Adiciona o offset i para base A
lw $s4, 0($t0) # v = A[i]
addi $s3, $s2, -1 # j = i - 1
Loop2:
addi $s3, $s3, -1 # --j
bge $s3, $0, Loop2 # Loop if j >= 0
addi $s2, $s2, 1 # ++i
blt $s2, $s1, Loop1 # Loop while i < 10
Exit: 
li $v0, 10 # Carrega o fim da operação
syscall # Fim