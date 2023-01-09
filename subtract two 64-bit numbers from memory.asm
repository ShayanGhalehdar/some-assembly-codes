lui $s0,0x1001
lw $t0,0($s0)
lw $t1,4($s0)
lw $t2,8($s0)
lw $t3,12($s0)

nor $t3,$t3,$0
nor $t2,$t2,$0
addi $t2,$t2,0x0001
sltiu $t7,$t2,0x0001
addu $t3,$t3,$t7

addu $t4,$t0,$t2 
add $t5,$t1,$t3 
sltu $t6,$t4,$t0 
addu $t5,$t5,$t6
sw $t4,16($s0)
sw $t5,20($s0)
