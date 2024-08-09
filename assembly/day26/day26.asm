#--------------------------Conditional Statements------------------------#

#----------------------------If-else Statements------------------------------#

#----------------------------High-Level Code----------------------------#	

# if (apples = = oranges)
# f = g + h;
# else
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
j L2
L1: sub x8, x9, x29 # apples = oranges − h
L2:

#----------------------------EXPLAINATION----------------------------#

# If/else statements execute one of two blocks of code, depending on a
# condition. When the condition in the if statement is met, the if block
# is executed. Otherwise, the else block is executed. 
# shows an example if/else statement.
# Like if statements, if/else assembly code tests the opposite condition
# of the one in the high-level code. In the high-level
# code tests for (apples    = =    oranges) and the assembly code tests for
# (apples != oranges). If that opposite condition is TRUE, bne skips the
# if block and executes the else block. Otherwise, the if block executes and
# finishes with a jump (j) past the else block.



