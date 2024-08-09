#---------------------------------Jumps------------------------------------#
# A program can jump—that is, unconditionally branch—using one of
# three instructions: jump (j), jump and link (jal), or jump register (jr). j
# jumps directly to the instruction at the specified label. Below given code
# shows the use of the j (jump) instruction to skip over three instructions
# and continue at the add instruction after the label target. After the j
# instruction executes, this program unconditionally continues executing
# the add instruction at the label target. All of the instructions between
# the jump and the label are skipped. 

#--------------------RISCV_ASSEMBLY_CODE---------------------------------#	

#-----------------UNCONDITIONAL BRANCHING USING j------------------------#

j target         # jump to target
srai x9, x9, 2   # not executed
addi x9, x9, 1   # not executed
sub x9, x9, x8   # not executed
target:
add x9, x9, x8   # x9 = x9 + x8



