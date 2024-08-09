addi x9, x0, 0         # i=0
addi x7, x0, 200       # t2 = 200
for:
bge x9, x7, done       # if i >= 200 then done
slli x5, x9, 2         # t0 = i * 4
add  x5,x5,x8          # address of scores[i]
lw x6, 0(x5)           # t1 = scores[i]
addi x6, x6, 10        # t1 = scores[i] + 10
sw x6, 0(x5)           # scores[i] = t1
addi x9, x9, 1         # i=i+1
j for                  # repeat
done: