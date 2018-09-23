// Questão 5
/* plotar o grafico e ver +- onde fica a raiz, daí só meter o menor
 * valor em 'a' e o maior em 'b' */
a = -2 // x min
b = 2 // x max
step = 0.01

x = [a:step:b]; // pontos para o grafico

function u = f1 (x)
    u = sin(x) + exp(x) //  funcao para ser plotada
end

plot(x,f1); xgrid

/* Utilizando o método da bissecção estime a maior raiz de 
 * f(x)=\sin()+*\exp(x) com 5 dígitos significativos.
 */
function y=f(x)
    y = sin(x) + exp(x) //  funcao para ter as raizes obtidas
endfunction

format(10)

for i=1:10000
    m = (a+b)/2
    if (f(a) * f(m) < 0) then
        b = m
    else
        a = m
    end
    disp([a b])
end
