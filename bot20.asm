# Anisse Astier
#.arch arm
#.bits 64
adr x10, start
mov x2, 512+32
mov x8, 0x180
mov x9, 0x180
ldp x11, x12, [x10], 16
ldp x14, x15, [x10]
stp x11, x12, [x9], 16
stp x14, x15, [x9]
br x8
start:
and x2, x2, #0x3f0
stp x11, x12, [x2], 16
stp x14, x15, [x2], 16
stp x11, x12, [x2], 16
stp x14, x15, [x2], 16
stp x11, x12, [x2], 16
stp x14, x15, [x2], 16
b start
