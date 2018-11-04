A = [3 2 1 0 0 0 0 0
     2 6 2 1 0 0 0 0
     1 2 6 2 1 0 0 0
     0 1 2 6 2 1 0 0
     0 0 1 2 6 2 1 0
     0 0 0 1 2 6 2 1
     0 0 0 0 1 2 6 2
     0 0 0 0 0 1 2 6]
b  = [1 1 1 1 1 1 1 1]' // Transposta
x1 = [0 0 0 0 0 0 0 0]' // Chute inicial

[x,dx] = jacobi(A, b, x1, 10^(-3), 1000)
//[x,dx] = gauss_seidel(A, b, x1, 10^(-3), 1000)

/**
 * x   : solucao
 * b-Ax: residuo
 * kappa1 = norm(A,1)*norm(inv(A),1) pra ver o condicionamento, 8 é baixo nesse exemplo, entao A e' bem condicionada
 * 78 iteracoes foram necessarias nesse exemplo no jacobi e 7 no gauss_seidel
 */
