# Anisse Astier
#.arch arm
#.bits 64
adr x10, start
mov x13, 16
mov x14, 1008
sub x5, x5, 1
mov x4, x5
ldp x11, x12, [x10]
stp x11, x12, [x13]
stp x11, x12, [x13]
br x13
start:
stp x11, x12, [x13]
stp x5, x4, [x14, -16]!
stp x11, x12, [x13]
b start
