# Input Date Like: 0x13990631 = 31th Shahrivar 1399
# Input Assumption:  Year = (1372,1407) [IMPORTANT]
# From beginning of 1300 to end of 1371 is  500805933 days (contains 18 "kabise years" based on Wikipedia
# $a0 : Input - $v0 : Output

addiu $t7,$0,0x0001
addiu $t6,$0,0x000a
addiu $t5,$0,0x0006

andi $v0,$a0,0x000f
srl $a0,$a0,4
andi $t0,$a0,0x000f
multu $t0,$t6
mflo $t0
addu $v0,$v0,$t0
srl $a0,$a0,4
andi $t0,$a0,0x000f
srl $a0,$a0,4
andi $t1,$a0,0x000f
multu $t1,$t6
mflo $t1
addu $t0,$t0,$t1

sltiu $t1,$t0,8
subu $t2,$t0,$t7
addiu $t3,$0,31
multu $t2,$t3
mflo $t2
addu $v0,$v0,$t2
subu $v0,$v0,$t7
srl $a0,$a0,4
bne $t1,$0,A1
addiu $v0,$v0,7
subu $v0,$v0,$t0

A1:
andi $t0,$a0,0x000f
multu $t0,$t7
mflo $t1
addu $t4,$t4,$t1
srl $a0,$a0,4
mult $t7,$t6
mflo $t7
addiu $t5,$t5,0x0001
bne $t5,$t6,A1

addiu $t0,$0,0x055c
subu $t0,$t4,$t0
addiu $t1,$0,0x0004
divu $t0,$t1
mflo $t1
addu $v0,$v0,$t1
addiu $t2,$0,365
multu $t0,$t2
mflo $t1
addu $v0,$v0,$t1
addiu $v0,$v0,500805933
#jr ra