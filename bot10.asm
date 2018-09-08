# Anisse Astier
#.arch arm
#.bits 64
adr x0, start
mov x3, 0x380
ldp x1, x2, [x0], 16
ldp x5, x6, [x0]
stp x1, x2, [x3], 16
stp x5, x6, [x3]
sub x3, x3, 16
br x3
start:
add x3, x3, 32
stp x1, x2, [x3], 16
stp x5, x6, [x3], 16
and x3, x3, 0x3ff
stp x1, x2, [x3]
stp x5, x6, [x3, 16]
br x3
.word 0xFF0FFF0F
