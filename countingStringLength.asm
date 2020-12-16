.text 
.globl main

main:
	la , $t2,str
	li ,$t0 ,0
	j nextCh

nextCh:
	lb $t0,($t2)
	beqz $t0,strEnd
	addi $t1,$t1,1
	addi $t2,$t2,1
	j nextCh

strEnd:
	move $a0,$t1 # εμφάνισε το μήκος της
	li $v0,1 # συμβολοσειράς
	syscall	
	li $v0,10 # να επιστρέψεις στο
	syscall 
	
		
	
.data
str: .asciiz "123456789"
