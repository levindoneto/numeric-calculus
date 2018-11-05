/**
 * Coloca em a os coeficientes do polinomio de grau especificado em p que
 * melhor se ajuste aos pares x,y.
 */
clear

// Pares (x,y)
x = [0 1 2 3 4 7]' // Coordenada x transposta
y = [1 3 4 6 5 7]' // Coordenada y transposta
n = size(x,1)

p = 2 // Ordem do polinomio a ser gerado

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
XX      = 0:0.1:10
YY      = 0
residuo = 0
for i=1:p+1
    YY = YY+a(i)*XX.^(i-1);
    residuo = residuo+a(i)*x.^(i-1);
end
residuo = residuo - y;

// YY = a(1) + a(2)*XX + a(2)*XX^2 ... a(n)*XX^n
