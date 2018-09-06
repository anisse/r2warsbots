# Anisse Astier
#.arch arm
#.bits 64
adr x0, 68
adr x1, -4
loop:
  stp x0, x2, [x1, -16]!
  stp x1, x2, [x0, 16]!
  b loop
