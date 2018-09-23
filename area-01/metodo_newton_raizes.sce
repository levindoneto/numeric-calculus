// funcao
function y=f(x)
    y = 8*x^7 - 12*x^3 + 5
endfunction

// derivada literal da funcao
function y=fl(x)
    /* x=poly(0,'x') // cria um polinomio x
     * y=derivat(8*x^7 - 12*x^3 + 5) // calcula a derivada de f(x)
     */
    y=8*7*x^6 - 12*3*x^2
endfunction

/* grafico pra ver onde estao as raized de f(x) para ter um chute 'x'.
 * Ver onde tem a raiz que tu quer e pegar um x proximo */
x=-2:0.1:1.5 // pontos do grafico-> de_onde:passo:ate_onde
plot(x,f(x),'r.-'); xgrid

// metodo de newton
x = -1.1648 // chute
for n=1:20
   x=x-f(x)/fl(x)
   disp(x) // da pra ver entao se os ultimos valores estao convergindo
end

/* Se pedir com erro relativo menos que 10^-5 e' pq quer com pelo menos 5
 * casas decimais. Moral é dar um format(25) antes de executar o codigo.
 */
