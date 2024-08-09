# ------------------------------------WRITING/READING MEMORY---------------------------------
# High-Level Code
# mem[5] = 42;

# RISC-V Assembly Code
addi x5, x0, 42   # x5 = 42
sw   x5, 20(x0)   # data value at memory address 20 = 42 reg to mem
lw   x6, 20(x0)   # mem to reg x6 = 42