//definição das funções
function y=f(x)
    y=x^6 - 3*x^5 + 29*x + 1
endfunction

function y=fl(x)
    y=6*x^5 - 15*x^4 + 29
endfunction

//gráfico
x=-2:0.1:1.5
plot(x,f(x),'r.-'); xgrid

//metodo de newton
x=-0.25
for n=1:10
   x=x-f(x)/fl(x)
   disp(x)
end
