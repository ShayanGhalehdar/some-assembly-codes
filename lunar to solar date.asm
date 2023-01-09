# Input Date Like: 0x13990631 = 31th Shahrivar 1399 
# $a0 : Input - $v0 : Output
# Shamsi : $a1=0 - Miladi : $a1=1
#IMPORTANT : Output: $v0 = 0xyyyymmdd , yyyy and mm and dd are in hex form

addiu $t7,$0,0x0001
addiu $t6,$0,0x000a
addiu $t5,$0,0x0006

andi $t0,$a0,0x000f
srl $a0,$a0,4
andi $t1,$a0,0x000f
srl $a0,$a0,4
multu $t1,$t6
mflo $t1
addu $s0,$t1,$t0

andi $t0,$a0,0x000f
srl $a0,$a0,4
andi $t1,$a0,0x000f
srl $a0,$a0,4
multu $t1,$t6
mflo $t1
addu $s1,$t0,$t1

sltiu $t0,$s1,8
subu $t3,$s1,$t7
addiu $t2,$0,31
multu $t3,$t2
mflo $t3
addu $t3,$s0,$t3
bne $t0,$0,A1
addiu $t3,$t3,7
subu $t3,$t3,$s1

A1:
andi $t0,$a0,0x000f
multu $t0,$t7
mflo $t1
addu $s2,$s2,$t1
srl $a0,$a0,4
mult $t7,$t6
mflo $t7
addiu $t5,$t5,0x0001
bne $t5,$t6,A1

beq $a1,$0,ShamsiToMiladi
sltiu $t0,$t3,80
addiu $t1,$0,365
multu $t1,$t0
mflo $t1
addu $t3,$t3,$t1
addiu $t4,$0,82
subu $t3,$t3,$t4
subu $s2,$s2,$t0
addiu $t4,$0,621
subu $s2,$s2,$t4
j A3

ShamsiToMiladi:
addiu $t3,$t3,79
addiu $t0,$0,365
sltu $t1,$t0,$t3
multu $t1,$t0
mflo $t0
subu $t3,$t3,$t0
addu $s2,$s2,$t1
addiu $s2,$s2,621
A3:
sltiu $t4,$t3,217
subu $t5,$t2,$t4
bne $t4,$0,A2
addiu $t3,$t3,0xff28
addiu $s3,$0,7
A2:
divu $t3,$t5
mflo $t6
mfhi $s4
addu $s3,$s3,$t6
addiu $s3,$s3,1

addu $v0,$0,$s2
sll $v0,$v0,8
addu $v0,$v0,$s3
sll $v0,$v0,8
addu $v0,$v0,$s4