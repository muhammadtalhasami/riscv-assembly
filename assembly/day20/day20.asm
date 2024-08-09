#----------------CONDITIONAL BRANCHING USING bne-------------------------#

#--------------------RISCV_ASSEMBLY_CODE---------------------------------#	

addi x8, x0, 4      # x8 = 0 + 4 = 4
addi x9, x0, 1      # x9 = 0 + 1 = 1
slli x9, x9, 2      # x9 = 1 << 2 = 4
bne  x8, x9, target # x8 = = x9, so branch not taken
addi x9, x9, 1      # x9 = 4 + 1 = 5
sub  x9, x9, x8     # x9 = 5 - 4 = 1
target:             # label
add  x9, x9, x8     # x9 = 1 + 4 = 5


#--------------------RISCV_ASSEMBLY_CODE---------------------------------#	

# In above code, the branch is not taken because x8 is equal to
# x9, and the code continues to execute directly after the bne (branch if not
# equal) instruction. All instructions in this code snippet are executed.