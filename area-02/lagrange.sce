clear
/* Funcao para pegar os polinomios de lagrange
 * X: Ponto (escalar) onde a interpolacao esta' sendo calculada
 * x: Vetor de todos pontos para interpolar a funcao
 * k: Indice de qual L esta' sendo calculado
 * y: Retorno -> polinomio de lagrange no ponto k
 */
function y=L(X,x,k)
    n=size(x,1);
    y=1;
    for j=1:n
        if(k <> j) // onde k e' diferente de j
            y = y.*(X-x(j))./(x(k)-x(j))
        end
    end
endfunction

// Abaixo roda o exemplo para interpolar pontos de x
x=[5 6 7 8]' // 4 pontos -> curva com 4-1 pontos
y=[1 3 4 2]'
n=length(x); // size(x,1)
plot(x,y,'ro-'),xgrid // Faz grafico dos pontos

X = 0.5:0.1:6.5 // 0.5, 0.6, ..., 6.5
p = 0 // init no polinomio p
for k=1:n
  p = p + y(k)*L(X,x,k); // X.: todos pontos
end

plot(X,p,'b.-') // Plota interpolacao

/** Teste final
 * Se pedir Ln(m), rodar no console L(m,x,n) para obter a resposta
 */
 
/** Teste final
 * x = 1.
       3.
       4.
       6.
   L(1,x,2) = 0
   L(3,x,2) = 1 -> Pq 3 é o 2o elemento do vetor x
   L(4,x,2) = 0
   L(6,x,2) = 0
   
   L(valor,vetor,posicao)
 */
