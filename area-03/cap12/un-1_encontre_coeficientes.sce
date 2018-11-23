// Os x sao os pontos onde a f(x) e' calculada
// Usa quando Un+1 = Un-1 + H [ C1Fn+0 + C2Fn-1 + C3Fn-2]
//                                   ^       ^        ^
x(1) = 0;
x(2) = -1;
x(3) = -2;

// Daqui pra baixo nao muda pra esse padrao de = Un-1...
b(1) = 2;
b(2) = 0;
b(3) = 2/3;

for i=1:3
    M(1,i)=1;
    M(2,i)=x(i);
    M(3,i)=x(i)^2;
end

c = inv(M)*b;
S = c(1)^2 + c(2)^2 + c(3)^2;

disp(c);
