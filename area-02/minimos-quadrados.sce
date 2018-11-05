/**
 * Coloca em a os coeficientes do polinomio de GRAU ESPECIFICADO EM P que
 * melhor se ajuste aos pares x,y.
 * PARA RETAS     -> p=1
 * PARA PARABOLAS -> p=2...
 */
clear

p = 1 // Ordem do polinomio a ser gerado

// Pares (x,y)
x = [2:0.1:4]' // Coordenada x transposta
y = exp(x) // Coordenada y transposta
n = size(x,1)
plot(x,y,'ro-'),xgrid // Plota grafico dos pontos

// Monta matriz simetrica de minimos quadrados
for i=1:p+1 //for (i=1; i<= p+1; i++)
    for j=1:p+1
        M(i,j) = sum(x.^(i+j-2)) // . elemento a elemento
    end
end

// Monta matriz de resultado b
for i=1:p+1
    b(i) = sum(y.*x.^(i-1))
end

// Pegando os coeficientes do polinomio de ajuste
a = inv(M)*b;

// Monta polinomio para plotagem
XX      = 2:0.1:4 // Colocar os mesmos pontos passados por X, ou que pegue todos pontos de X pra deixar o grafico melhor
YY      = 0
residuo = 0
for i=1:p+1
    YY = YY+a(i)*XX.^(i-1); // Polinomio
    residuo = residuo+a(i)*x.^(i-1);
end
residuo = residuo - y;

plot(XX,YY,'b.');xgrid


t=2;
f=(a(1,1)+a(2,1)*t) // ... +a(n,1)*t^n

//disp(f,a) // Valor do polinomio de ajuste no ponto, polinomio
// YY = a(1) + a(2)*XX + a(2)*XX^2 ... a(n)*XX^n
