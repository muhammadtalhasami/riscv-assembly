--------------32-BIT CONSTANT WITH A ONE IN BIT 11----------------------
# High-Level Code
# int a = 0xFEEDA987;

# RISC-V Assembly Code

lui  x9, 0xFEEDB   # x9 = 0xFEEDB000
addi x9, x9, -1657 # x9 = 0xFEEDA987