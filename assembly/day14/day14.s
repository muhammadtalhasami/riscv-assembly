# Logical shifts are also used with and and or instructions to extract
# or assemble bitfields. For example, the following code extracts bits 15:8
# from x8 and places them in the lower byte of x9. If x8 is 0x1234ABCD,
# then x9 will be 0xAB after this code completes.

#RISCV_ASSEMBLY_CODE

lui x8,0x1234B
addi x8,x8,-1075
srli x9,x8,8
andi x9,x9,0xFF
