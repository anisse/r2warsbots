# Anisse Astier
.arch arm
.bits 64
.hex e0ffff10 # adr x0, -4
loop:
.hex 0188bea9 # stp x1, x2, [x0, -24]!
.hex 00244092 # and x0, x0, #0x3ff
.hex feffff17 # b loop
