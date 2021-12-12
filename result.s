.data

.globl main
.text
main:
li $t0, 0

sw $t0, 0($sp)

lw $t0, 0($sp)

li $t1, 2

add $t0, $t0, $t1
sw $t0, 0($sp)

lw $t0, 0($sp)

lw $t2, 0($sp)

lw $t3, 0($sp)

move $a0, $t3
li $v0, 1
syscall

li $v0, 10
syscall
