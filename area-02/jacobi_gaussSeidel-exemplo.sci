
//n = 8
// Montar A
/*
for i=1:n // itera linhas
    for j=1:n // itera colunas
       if i==j then
           A(i,j) = 2
       elseif abs(i-j) == 1 then
           A(i,j) = 1
       else
           A(i,j) = 0
       end
    end
end
*/
A = [6 2 4
2 4 1
1 1 8];
// Montar B
/*
for i=1:n
    b(i) = 1
end
*/
b  = [1 1 1]' // Transposta
x1 = [0 0 0]' // Chute inicial

[x,dx] = jacobi(A, b, x1, 10^(-3), 5)
[x,dx] = gauss_seidel(A, b, x1, 10^(-3), 5)
/**
 * A  : Matriz de coeficientes
 * b  : Vetor coluna (deve ser passado transposto', geralmete tudo [1 1 ... 1]')
 * x  : Vetor coluna de chute (Geralmente [0 0 ... 0]')
 * tol: tolerancia
 * N  : Numero maximo de iteracoes
 */
