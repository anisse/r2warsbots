# Anisse Astier
#.arch arm
#.bits 64
.hex 20010010       #adr x0, 0x64                
.hex 830c90d2       #movz x3, 0x8064             
.hex e302a0f2       #movk x3, 0x17, lsl 16       
.hex 010840a9       #ldp x1, x2, [x0]            
.hex 610800a9       #stp x1, x2, [x3]            
.hex 050080d2       #movz x5, 0                  
.hex e00300cb       #neg x0, x0                  
.hex e10300aa       #mov x1, x0                  
.hex 60001fd6       #br x3                       
start:
.hex a00481a8       #stp x0, x1, [x5], 0x10                   
.hex a00481a8       #stp x0, x1, [x5], 0x10                   
.hex a5244092       #and x5, x5, 0x3ff                        
.hex fdffff17       #b start
