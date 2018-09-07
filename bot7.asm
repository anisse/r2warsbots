# Anisse Astier
#.arch arm
#.bits 64

b begin
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
begin:
adr x0, start
ldr x1, [x0]
start:
str x1,  [x0], 4
str x1,  [x0], 4

