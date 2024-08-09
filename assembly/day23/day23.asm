#--------------------RISCV_ASSEMBLY_CODE---------------------------------#	

#-----------------UNCONDITIONAL BRANCHING USING jr------------------------#

# Purpose: Unconditional jump to the address contained in a register.
# Syntax: jr rs
# Usage: Jumps to the address contained in register rs. 
# There is no link register involved, so no return address is saved.

jal x1,target    # jump to target
srai x9, x9, 2   # not executed
addi x9, x9, 1   # not executed
sub x9, x9, x8   # not executed
target:
add x9, x9, x8   # x9 = x9 + x8
jr x1



