.text

.globl main 
	
main:
	li ,$t1,69
	la,$t2,chararray

nextCh:
	lb $t0,($t2)
	beqz $t0, strEnd
	bne $t0,101,not_e
	sb $t1,($t2)
	
not_e:
	addi $t2,$t2,1
	j nextCh
	

strEnd:
	la,$a0,chararray
	li $v0,4
	syscall
	
	li $v0,10
	syscall
.data
chararray: .asciiz "abeebbaeeeaeeebbebaebabab\n"
