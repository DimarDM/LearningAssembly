.text

.globl main

main: 
	la $t0,Y #array
	lw $t1, ($t0)
	lw $t2 ,one
	lw $t4,N #length of array
for:
	bge $t2,$t4 ,exit
	addi $t2,$t2,1
	addi $t0,$t0,4
	lw $t3 ,($t0)
	add $t1,$t1,$t3
	j for
exit:
	la $a0,ans #show message  "The sum is "
	li $v0,4
	syscall
	move $a0,$t1 #show sum of array 
	li $v0,1
	syscall

.data
	N: .word 10 #length of array 
	one: .word 1
	Y: .word 1,1,1,1,1,1,,1,1,1,1 #the array 
	ans: .asciiz "The sum is "
	CRLF: .asciiz "\n"
