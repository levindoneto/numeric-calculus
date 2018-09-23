//definição das funções
// como fala de g derivado < 1, ja colocar aqui a derivada
function y=f(x)
    y=5*x^4 - 1.4*x - 1
endfunction

function y=fl(x)
    y=20*x^3 - 1.4
endfunction

//metodo de newton para o primeiro corte em y=0
x=-1
for n=1:10
   x=x-f(x)/fl(x)
   disp(x)
end

//metodo de newton para o segundo corte em y=0
x=0.5
for n=1:10
   x=x-f(x)/fl(x)
   disp(x)
end
