#mulhu (multiply high unsigned unsigned) treats both operands as unsigned (positive).

#--------------RISCV-ASEMBLY-CODE------------------------------------#

lui  x8,0x80000  # or 0x40000
addi x8,x8,0x000 # 0x000
addi x9,x0,2     # 4
mulhu x18,x8,x9 #X18 = 1