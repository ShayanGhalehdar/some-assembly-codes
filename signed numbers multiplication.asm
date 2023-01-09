lui $s0,0x1001 
lw $t0,0($s0)
lw $t1,4($s0)
lw $t2,8($s0)
lw $t3,12($s0)

multu $t2,$t0
mflo $s4
sw $s4,16($s0)

mfhi $t5
multu $t2,$t1
mflo $t6
mfhi $s5
addu $s1,$t6,$t5
sltu $t7,$s1,$t6
multu $t3,$t0
mflo $s6
mfhi $s7
addu $s1,$s1,$s6
sw $s1,20($s0)

sltu $t5,$s1,$s6
or $t5,$t5,$t7
addu $s2,$s5,$s7
addu $s2,$s2,$t5
sltu $t7,$s2,$s5
multu $t1,$t3
mflo $s1
mfhi $s3
addu $s2,$s2,$s1
sw $s2,24($s0)

sltu $s6,$s2,$s1
or $t7,$t7,$s6
addu $s3,$s3,$t7
sw $s3,28($s0)