#-------------------Shift Instructions--------------------
# RISC-V ASSEMBLY

lui  x18,0x80000
addi x18,x18,0x001
slli x5,x18,2
srli x6,x18,22
srai x7,x18,22