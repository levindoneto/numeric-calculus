// Os x sao os pontos onde a f(x) e' calculada 
// Fx(xn) = [C1Fn-1 + C2Fn+0 + C3Fn+1] / H
//               ^     ^   ^        ^

n = 2; // indice do coeficiente que multiplica o Fn

x(1) = -1;
x(2) = 0;
x(3) = 1;

// Daqui pra baixo nao muda pra esse padrao de aprox de derivada
b(1) = 0;
b(2) = 1;
b(3) = 2*x(n);

for i=1:3
    M(1,i) = 1;
    M(2,i) = x(i);
    M(3,i) = x(i)^2;
end

c = inv(M)*b;
S = c(1)^2 + c(2)^2 + c(3)^2;

disp(c);
