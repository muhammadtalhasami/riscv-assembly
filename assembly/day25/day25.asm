#--------------------------Conditional Statements------------------------#

# If, if/else, and switch/case statements are conditional statements com-
# monly used in high-level languages. They each conditionally execute a
# block of code consisting of one or more statements. This section shows
# how to translate these high-level constructs into RISC-V assembly
# language.

#----------------------------If Statements------------------------------#

#----------------------------High-Level Code----------------------------#	

# if (apples = = oranges)
# f = g + h;
# apples = oranges − h;

#--------------------------RISCV_ASSEMBLY_CODE---------------------------#	

# x8 = apples, x9 = oranges

# x18 = f, x19 = g, x29 = h

addi x8,x0,8
addi x9,x0,8
addi x19,x0,5
addi x29,x0,4
bne x8, x9, L1      # skip if (apples != oranges)
add x18, x19, x29   # f = g + h
L1: sub x8, x9, x29 # apples = oranges − h

# An if statement executes a block of code, the if block, only when a
# condition is met.Above code shows how to translate an if
# statement into RISC-V assembly code. The assembly code for the if state-
# ment tests the opposite condition of the one in the high-level code. In
# the high-level code tests for apples   = =   oranges. The
# assembly code tests for apples != oranges using bne to skip the if block
# if the condition is not satisfied. Otherwise (i.e., when apples   = =   oranges),
# the branch is not taken, and the if block is executed.



