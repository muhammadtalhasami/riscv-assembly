#----------------------------Switch/case Statements*------------------------------#

#----------------------------High-Level Code----------------------------#	

# switch (button) {
# case 1: amt = 20; break;
# case 2: amt = 50; break;
# case 3: amt = 100; break;
# default: amt = 0;
# } 
# // equivalent function using
# // if/else statements
# if
# (button = = 1) amt = 20;
# else if (button = = 2) amt = 50;
# else if (button = = 3) amt = 100;
# else
#  amt = 0;

#--------------------------RISCV_ASSEMBLY_CODE---------------------------#	

# x8 = button, x9 = amt

addi x8,x0,3

case1:
addi x5, x0, 1        # X5 = 1
bne  x8, x5, case2    # button = = 1?
addi x9, x0, 20       # if yes, amt = 20
j done                # break out of case

case2:
addi x5, x0, 2        # X5 = 2
bne  x8, x5, case3    # button = = 2?
addi x9, x0, 50       # if yes, amt = 50
j done                # break out of case

case3:
addi x5, x0, 3        # X5 = 3
bne  x8, x5, default  # button = = 3?
addi x9, x0, 100      # if yes, amt = 100
j done                # break out of case

default:
add x9, x0, x0        # amt=0
done:

#----------------------------EXPLAINATION----------------------------#

# Switch/case statements, also called simply case statements, execute
# one of several blocks of code, depending on the conditions. If no con-
# ditions are met, the default block is executed. A case statement is
# equivalent to a series of nested if/else statements. Above code
# shows two high-level code snippets with the same functionality: they cal-
# culate whether to dispense $20, $50, or $100 from an ATM (automatic
# teller machine) depending on the button pressed. The RISC-V assembly
# implementation is the same for both high-level code.
