# ------------------------------------READING MEMORY---------------------------------
# High-Level Code
# a = mem[2];

# RISC-V Assembly Code
# x18 = a
lw x18, 8(zero) # x18 = data at memory address (zero + 8)