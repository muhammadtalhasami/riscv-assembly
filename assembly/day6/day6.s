#----------------------------INITILAIZING_VALUES_USING_IMMEDIATES-------------------------#

#High-Level-Code 
# i=0;
# x=2032;
# y=-78;

#Riscv-Assembly-Code
# x18=i ,x19=x ,x20=y

addi x18,x0,0      # i=0
addi x19,x0,2032   # x=2032
addi x20,x0,-78    # y=-78