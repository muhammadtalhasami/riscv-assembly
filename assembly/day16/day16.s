# Three versions of the “multiply high” operation exist: mulh, mulhsu,
# and mulhu. These instructions put the high 32 bits of the multiplica-
# tion result in the destination register. 

# mulh (multiply high signed signed) treats both operands as signed.

#--------------RISCV-ASEMBLY-CODE------------------------------------#
lui  x8,0x80000 
addi x8,x8,0x000
addi x9,x0,2
mulh x18,x8,x9 #X18 = -1