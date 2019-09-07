# Anisse Astier
#.arch arm
#.bits 64
adr x0, start
ldr x1, [x0]
str x1, [x2]
br x3
start:
str x1, [x2, 4]!
str x1, [x2, 4]!
