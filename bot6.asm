# Anisse Astier
#.arch arm
#.bits 64
adr x0, start
mov x3, 1008
ldp x1, x2, [x0]
stp x1, x2, [x3]
br x3
start:
stp x0, x4, [x3, -24]!
stp x0, x4, [x3, -24]!
stp x0, x4, [x3, -24]!
b start
