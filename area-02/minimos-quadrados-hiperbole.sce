// hiperbole  y=1./(a+bx)
x=[0:0.1:1];
y=sin(x)+1;
yi=1./y;
A=[ones(11,1)   x'];
v=inv(A'*A)*A'*yi';
a=v(1)
b=v(2)
