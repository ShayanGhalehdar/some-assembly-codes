lui $s0,0x1001 
lw $t0,0($s0)
lw $t1,4($s0)

srl $t2,$t0,31
srl $t3,$t1,31
beq $t2,$t3,labela
sltu $t4,$t2,$t3
beq $t4,$0,labelb
j end

labelb:
addu $t2,$t0,$0
addu $t0,$t1,$0
addu $t1,$t2,$0
sw $t0,0($s0)
sw $t1,4($s0)

labela:
sltu $t2,$t1,$t0
beq $t2,$0,labelb
end: