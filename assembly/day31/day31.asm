#-------------------------For Loops-------------------------------#

# It is very common to initialize a variable before a while loop, check
# that variable in the loop condition, and change that variable each time
# through the while loop. For loops are a convenient shorthand that com-
# bines the initialization, condition check, and variable change in one
# place. The high-level code format of the for loop is:
# for (initialization; condition; loop operation)
# statement
# The initialization code executes before the for loop begins. The con-
# dition is tested at the beginning of each loop iteration. If the condition is
# not met, the loop exits. If the condition is met, the statement (or state-
# ments) in the loop body are executed. The loop operation executes at the
# end of each loop iteration.

#-------------------------High_level code----------------------------#

# // add the numbers from 0 to 9
# int sum = 0;
# int i;
# for (i = 0; i < 10; i = i + 1) {
# sum = sum + i;
# }

#-------------------------RISC-V Assembly Code------------------------#

# x8 = i, x9 = sum

addi x9, x0, 0          # sum = 0
addi x8, x0, 0          # i=0
addi x5, x0, 10         # x5 = 10
for: bge x8, x5, done   # i >= 10?
add x9, x9, x8          # sum = sum + i
addi x8, x8, 1          # i=i+1
j for                   # repeat loop
done:

#-------------------------EXPLANIATION------------------------------#

# adds the numbers from 0 to 9. The loop vari-
# able, in this case i, is initialized to 0 and is incremented at the end of
# each loop iteration. The for loop executes as long as i is less than 10.
# Note that this example also illustrates relative comparisons. The loop
# checks the < condition to continue, so the assembly code checks the
# opposite condition, >=, to exit the loop.



