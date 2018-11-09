clear
x=[-2 -1 0 1 2]';
y=[1 -1 -1 1 5]';
n=size(x,1);

p=2;
for i=1:p+1
    for j=1:p+1
        M(i,j)=sum(x.^(i+j-2))
    end
end
for i=1:p+1
    b(i)=sum(y.*x.^(i-1))
end

a=inv(M)*b;

XX      =0.9
YY      =0
residuo =0
for i=1:p+1
    YY=YY+a(i)*XX.^(i-1);
    residuo=residuo+a(i)*x.^(i-1);
end
residuo=residuo-y;
plot(XX,YY,'b')
plot(x,y,'r*');xgrid

//os coeficientes da função que melhor se ajusta aos pontos é dado pelo vetor "a"
//a ordem da função é definida em "p"
