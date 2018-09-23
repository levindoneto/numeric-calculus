// funcao para ter o erro calculado
function y = f(x)
    y = cos(6*x)
endfunction

// derivada dela pra usar na formula
function y = fl(x)
    y=-6*sin(6*x)
endfunction

x = 2.6 // erro relativo x*

k = x*fl(x)/f(x) // numero de condicionamento
disp (k)

erroentrada = 10^-5
errosaida = k*erroentrada

disp (errosaida) // resposta
