# Anisse Astier
#.arch arm
#.bits 64
adr x0, start
mov x3, 1008
neg x5, x0
mov x4, x5
ldp x1, x2, [x0]
stp x1, x2, [x3]
br x3
start:
stp x5, x4, [x3, -16]!
stp x5, x4, [x3, -16]!
stp x5, x4, [x3, -16]!
b start
