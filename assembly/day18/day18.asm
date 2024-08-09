#mulhsu (multiply high signed unsigned) treats the first operand as signed and the second as unsigned

#--------------RISCV-ASEMBLY-CODE------------------------------------#

lui  x8,0x80000  
addi x8,x8,0x000 
addi x9,x0,2     
mulhsu x18,x8,x9 #X18 = 1