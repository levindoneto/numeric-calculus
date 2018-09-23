// Q9
/* Encontre todas as raízes de f(x)=\cos(x)+x^2-3x.
 */

// fui plotando pra ver +- onde estavam as duas (ordem da f(x)) raízes da funcao

// Declaracao para calcular a 1a raiz e grafico
a = 122.41 // x min
b = 123.23 // x max
step = 0.01

x = [a:step:b]; // pontos para o grafico

function u = f (x)
    u = ((1-x^3)^(1/3)) - x^(1/2) //  funcao para ser plotada
end

//plot(x,f); xgrid

// 1a RAIZ
for i=1:10
    m = (a+b)/2
    if (f(a) * f(m) < 0) then
        b = m
    else
        a = m
    end
    disp([a b])
end

x=(a+b)/2
erro_abs=(b-a)/2

disp(erro_abs)
