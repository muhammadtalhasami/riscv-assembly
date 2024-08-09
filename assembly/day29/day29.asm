#-------------------------Getting Loopy----------------------------#

# Loops repeatedly execute a block of code, depending on a condition.
# While loops and for loops are commonly used in high-level languages.
# To we will learn how to translate them into RISC-V assembly lan-
# guage, taking advantage of conditional branching.

#-------------------------While Loops-------------------------------#

# While loops repeatedly execute a block of code while a condition is met—
# that is, until a condition is not met. The while loop in above code
# determines the value of x such that 2x = 128. It executes seven times,
# until pow = 128.

#-------------------------High_level code----------------------------#

# // determines the power
# // of x such that 2x = 128
# int pow = 1;
# int x = 0;
# while (pow != 128) {
# pow = pow * 2;
# x = x + 1;
# }

#-------------------------RISC-V Assembly Code------------------------#

# x8 = pow, x9 = x

addi x8, x0, 1          # pow = 1
add x9, x0, x0          # x=0
addi x5, x0, 128        # t0 = 128
while: beq x8, x5, done # pow = 128?
slli x8, x8, 1          # pow = pow * 2
addi x9, x9, 1          # x=x+1
j while                 # repeat loop
done:

#-------------------------EXPLANIATION------------------------------#

# Like if/else statements, the assembly code for while loops tests the
# opposite condition of the one in the high-level code. If that opposite
# condition is TRUE (in this case, s0 = = 128), the while loop is finished.
# Otherwise, the branch isn’t taken and the loop body executes.
# Above Code initializes pow to 1 and x to 0 before the while loop.
# The while loop compares pow to 128 and exits the loop if it is equal.
# Otherwise, it doubles pow (using a left shift), increments x, and branches
# back to the start of the while loop.


