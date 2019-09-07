# Anisse Astier
#.arch arm
#.bits 64
adr x10, start
mov x2, 512
mov x13, 0x180
sub x5, x5, 1
mov x4, x5
ldp x11, x12, [x10]
stp x11, x12, [x13]
br x13
start:
and x2, x2, #0x3f0
stp x11, x12, [x2], 16
stp x11, x12, [x2], 16
b start
