// Aproximacao de derivada dupla
// f{xx}(xn) = [c1*f{n+0} + c2*f{n+1} + c3*f_{n+3}] / h^2
//                     ^           ^            ^  
// Os x sao os pontos onde a f(x) e' calculada

x(1) = 0;
x(2) = 1;
x(3) = 3;

// Daqui pra baixo nao muda pra calculo de f''
b(1) = 0;
b(2) = 0;
b(3) = 2;

for i=1:3
    M(1,i) = 1;
    M(2,i) = x(i);
    M(3,i) = x(i)^2;
end

c = inv(M)*b;
S = c(1)^2 + c(2)^2 + c(3)^2;

disp(c);
