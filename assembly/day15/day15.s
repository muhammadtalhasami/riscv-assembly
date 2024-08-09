# The multiply instruction (mul) multiplies two 32-bit numbers and
# produces a 32-bit product..mul x18, x8, x9 multiplies the values in x8
# and x9 and places the least significant 32 bits of the product in x18; the
# most significant 32 bits of the product are discarded. This instruction is
# useful for multiplying small numbers whose product fits in 32 bits. The
# bottom 32 bits of the product are the same whether the operands are
# viewed as signed or unsigned.

#RISCV_ASSEMBLY_CODE

addi x8,x0,99
addi x9,x0,23
mul  x18,x8,x9
