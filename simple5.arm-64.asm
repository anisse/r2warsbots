# Anisse Astier
.arch arm
.bits 64
.hex a0000010 #adr x0, start
.hex 037e80d2 #mov x3, 1008
.hex 010840a9 #ldp x1, x2, [x0]
.hex 610800a9 #stp x1, x2, [x3]
br x3
start:
.hex 6090bea9 #stp x0, x4, [x3, -24]!
.hex 6090bea9 #stp x0, x4, [x3, -24]!
.hex 6090bea9 #stp x0, x4, [x3, -24]!
.hex fdffff17 #b start
