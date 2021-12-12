.data
string1: .asciiz"\nMayor que 1"
string3: .asciiz"\nMenor que 2"
string5: .asciiz"\nMenor igual que 2"
string7: .asciiz"\nMayor igual que 2"
string11: .asciiz"\nIgual que 2"
string15: .asciiz"\nDistinto que 2"

.globl main
.text
li $t0, 0

sw $t0, 0($sp)

lw $t0, 0($sp)

li $t1, 2

add $t0, $t0, $t1
sw $t0, 0($sp)

lw $t0, 0($sp)

li $t2, 1

sgt $t0, $t0, $t2

beqz $t0, endif0

la $a0, string1
li $v0, 4
syscall


endif0 :

lw $t0, 0($sp)

li $t2, 2

slt $t0, $t0, $t2

beqz $t0, endif2

la $a0, string3
li $v0, 4
syscall


endif2 :

lw $t0, 0($sp)

li $t2, 2

sle $t0, $t0, $t2

beqz $t0, endif4

la $a0, string5
li $v0, 4
syscall


endif4 :

lw $t0, 0($sp)

li $t2, 2

sge $t0, $t0, $t2

beqz $t0, endif6

la $a0, string7
li $v0, 4
syscall


endif6 :

lw $t0, 0($sp)

li $t2, 2

beq $t0, $t2, label9
addi $t0, $zero, 0
 j finalLabel10
label9:
addi $t0, $zero, 1
finalLabel10:

beqz $t0, endif8

la $a0, string11
li $v0, 4
syscall


endif8 :

lw $t0, 0($sp)

li $t2, 2

sub $t0, $t0, $t2
sw $t0, 0($sp)

lw $t0, 0($sp)

li $t3, 2

bne $t0, $t3, label13
addi $t0, $zero, 0
 j finalLabel14
label13:
addi $t0, $zero, 1
finalLabel14:

beqz $t0, endif12

la $a0, string15
li $v0, 4
syscall


endif12 :


