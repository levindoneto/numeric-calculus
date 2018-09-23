// funcao
function y=f(x)
    y = x^6 - 3*x^5 + 30*x + 1
endfunction

// gráfico
x=-2:0.1:2
plot(x,f(x),'r.-'); xgrid
// numero de pontos fixos e' quantas vezes passa pelo zero
// raizes reais no caso

x = 2 // chute
for n=1:10
    x=-1/(x^2 - x -2)
    disp ( x )
end
