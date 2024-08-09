#High-Level-Code 
# a=b-c;
# f=(g+h)-(i+j);

#Riscv-Assembly-Code
# x8=a ,x9=b ,x18=c x19=f ,x20=g ,x21=h,x22=i,x23=j

sub x8,x9,x18  # a=b-c
add x5,x20,x21 # x5=g+h
add x6,x22,x23 # x6=i+j
sub x23,x5,x6  # f=(g+h)-(i+j)