addiu $s0,$0,0x0001
addiu $t1,$0,0x0001
addiu $t2,$0,0x0001
beq $a0,$t2,end
start:
addu $t2,$t0,$t1
addu $t0,$t1,$0
addu $t1,$t2,$0
subu $a0,$a0,$s0
beq $a0,$s0,end
j start
end:
addu $v0,$t2,$0
#jr $ra
