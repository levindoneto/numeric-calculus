// c*e^()ax)
x=[0:0.1:1];
y=sin(x)+1;
yi=log(y);
A=[ones(11,1) x'];
v=inv(A'*A)*A'*yi'
C=exp(v(1))
a=v(2)
