 adr x0, endprog +16
 mov x2, 1020 - endprog
 sub x1, x0, endprog + 64
 cmp x1, 0
 csel x1, x2, x1, lt
 add x4, x1, endprog + 4
looprog:
 ldp x2, x3, [x0, -16]!
 stp x2, x3, [x4, -16]!
 cmp x4, x1
 b.ge looprog
 br x1

endprog:
 nop
