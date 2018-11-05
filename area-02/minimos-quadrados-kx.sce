x=[0:0.1:1]'
b=sin(x)
A=[x^1]
k=(A'*A)\(A'*b)

disp(k)
