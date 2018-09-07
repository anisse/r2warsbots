# Anisse Astier
#.arch arm
#.bits 64
adr x0, -24
loop:
  stp x1, x2, [x0], -24
  and x0, x0, #0x3ff
  b loop
