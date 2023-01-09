#We assume the 32-bit input is in $a0

addiu $t0,$0,0x0001
addiu $t2,$0,0x000a
addiu $t3,$0,0x0002
Start:
andi $s0,$a0,0x000f
multu $s0,$t0
mflo $t1
addu $v0,$v0,$t1
srl $a0,$a0,4
mult $t0,$t2
mflo $t0
addiu $t3,$t3,0x0001
bne $t3,$t2,Start
#jr ra