#----------------------------IF-ELSE-IF*------------------------------#

#----------------------------High-Level Code----------------------------#	

# if
# (button = = 1) amt = 20;
# else if (button = = 2) amt = 50;
# else if (button = = 3) amt = 100;
# else
#  amt = 0;

#--------------------------RISCV_ASSEMBLY_CODE---------------------------#	

# x8 = button, x9 = amt

addi x8,x0,1

C1:
addi x5,x0,1
bne  x8,x5,C2
addi x9,x0,20
j  done
C2:
addi x5,x0,2
bne  x8,x5,C3
addi x9,x0,50
j  done
C3:
addi x5,x0,3
bne  x8,x5,C4
addi x9,x0,100
j  done
C4:
add x9,x0,x0
done:
