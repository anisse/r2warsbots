# Anisse Astier
.arch arm
.bits 64
.hex 20020010 #adr x0, 68
.hex e1ffff10 # adr x1, -4
loop:
.hex 2008bfa9 #stp x0, x2, [x1, -16]!
.hex 010881a9 #stp x1, x2, [x0, 16]!
.hex feffff17 #b loop
