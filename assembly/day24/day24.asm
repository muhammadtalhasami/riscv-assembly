#--------------------RISCV_ASSEMBLY_CODE---------------------------------#	

#-----------------UNCONDITIONAL BRANCHING USING jalr------------------------#

# Purpose: Jumps to an address stored in a register plus an immediate offset and saves the return address.
# Syntax: jalr rd, rs1, offset
# Usage: Computes the jump address as rs1 + offset, jumps to this address, and saves the address of the 
# next instruction (PC + 4) into register rd. 
# This is used for more flexible jumps, often for indirect jumps and returns from function calls.

jal  x1,target    # jump to target
srai x9, x9, 2   # not executed
addi x9, x9, 1   # not executed
sub  x9, x9, x8   # not executed
target:
add  x9, x9, x8   # x9 = x9 + x8
jalr x1,x1,0x0
addi x8,x0,1

# Summary of Differences
# j: Simple unconditional jump to a label (absolute addressing).
# jal: Jump to a label and save the return address in a register (absolute addressing with linking).
# jalr: Jump to an address computed from a register plus an offset and save the return address (indirect addressing with linking).
# jr: Simple unconditional jump to an address in a register (indirect addressing).

