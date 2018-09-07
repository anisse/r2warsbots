 adr x0, -16
 add x1, x0, endprog
 add x5, x1, endprog
 cmp x5, 1024 - 16
 csel x1, xzr, x1, gt
 add x5, x1, endprog
 add x4, x1, 16
looprog:
 ldp x2, x3, [x0, 16]!
 stp x2, x3, [x1, 16]!
 cmp x1, x5
 b.lt looprog
 br x4

endprog:
 nop
