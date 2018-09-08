# Anisse Astier
#.arch arm
#.bits 64
adr x0, start
mov x3, 0x3e0
ldp x1, x2, [x0]
stp x1, x2, [x3]
br x3
start:
and x3, x3, 0x3ff
stp x1, x2, [x3], 16
sub x4, x3, 16
br x4
