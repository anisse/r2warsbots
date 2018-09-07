# Anisse Astier
#.arch arm
#.bits 64
adr x0, start
mov x3, 0x7ff0
movk x3, 0x0018, lsl 16
ldp x1, x2, [x0]
stp x1, x2, [x3]
mov x5, 0
neg x0, x0
mov x1, x0
br x3
start:
stp x0, x1, [x5], 16
stp x0, x1, [x5], 16
and x5, x5, 0x3ff
b start
