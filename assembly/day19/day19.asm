# Conditional Branches
# The RISC-V instruction set has six conditional branch instructions, each
# of which take two source registers and a label indicating where to go.
# beq (branch if equal) branches when the values in the two source regis-
# ters are equal. bne (branch if not equal) branches when they are
# unequal. blt (branch if less than) branches when the value in the first
# source register is less than the value in the second, and bge (branch if
# greater than or equal to) branches when the first is greater than or equal
# to the second. blt and bge treat the operands as signed numbers, while
# bltu and bgeu treat the operands as unsigned.

#--------------------RISCV_ASSEMBLY_CODE---------------------------------#	

addi x8, x0, 4      # x8 = 0 + 4 = 4
addi x9, x0, 1      # x9 = 0 + 1 = 1
slli x9, x9, 2      # x9 = 1 << 2 = 4
beq  x8, x9, target # x8 = = x9, so branch is taken
addi x9, x9, 1      # not executed
sub  x9, x9, x8     # not executed
target:             # label
add  x9, x9, x8     # x9 = 4 + 4 = 8

#------------------------------------------------------------------------#	

# Above Example illustrates the use of beq. When the program
# reaches the branch if equal instruction (beq), the value in s0 is equal to
# the value in s1, so the branch is taken. Thus, the next instruction executed
# is the add instruction just after the label called target. The addi and sub
# instructions between the branch and the label are not executed.