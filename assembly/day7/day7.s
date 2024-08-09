--------------32-BIT CONSTANT EXAMPLE----------------------
# High-Level Code
# int a = 0xABCDE123;

# RISC-V Assembly Code

lui  x9, 0xABCDE   # x9 = 0xABCDE000
addi x9, x9, 0x123 # x9 = 0xABCDE123