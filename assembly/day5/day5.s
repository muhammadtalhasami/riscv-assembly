#----------------------------IMMEDIATE_OPERAND-------------------------#

#High-Level-Code 
# a=a+4;
# b=a-12;

#Riscv-Assembly-Code
# x8=a ,x9=b 

addi x8,x8,4   # a=a+4
addi x9,x4,-12 # b=a-12