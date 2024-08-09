#-------------------------Do-While Loops-------------------------------#

#-------------------------High_level code----------------------------#

# // determines the power
# // of x such that 2x = 128
# int pow = 1;
# int x = 0;
# do {
# pow = pow * 2;
# x = x + 1;
# } while (pow != 128);

#-------------------------RISC-V Assembly Code------------------------#

# x8 = pow, x9 = x

addi x8, x0, 1          # pow = 1
add x9, x0, x0          # x=0
addi x5, x0, 128        # t0 = 128
while: slli x8, x8, 1   # pow = pow * 2
addi x9, x9, 1          # x=x+1
bne  x8,x5,while        # pow = 128? 
done:

#-------------------------EXPLANIATION------------------------------#

# Do/while loops are similar to while loops, but they execute the body
# of the loop once before checking the condition. Above Code 
# illustrates such a loop. Notice that, unlike previous examples, the branch
# checks the same condition as in the high-level code.



