#--------------------RISCV_ASSEMBLY_CODE---------------------------------#	

#-----------------UNCONDITIONAL BRANCHING USING jal------------------------#

# The jal instruction is used to jump to a target address and 
# save the return address in a specified register. This is typically used for function calls.
# jal rd, offset
# rd: The destination register where the return address will be stored (usually ra for return address).
# offset: The offset from the current program counter (PC) to the target address.

jal x1,target    # jump to target
srai x9, x9, 2   # not executed
addi x9, x9, 1   # not executed
sub x9, x9, x8   # not executed
target:
add x9, x9, x8   # x9 = x9 + x8



