clear
/*************************************************
 *          NAO ESQUECER DE MUDAR A f(t,u)       *
 ************************************************/
 
/**
 * u_dado: u dado -> u(TINIT) = u_dado
 * t_final: tempo final -> u(t_final)
 * n_intervalos: numero de intervalos
 * com_grafico: plota grafico da funcao se %T e nao se %F
 * 
 * [u]: aproximacao com o metodo de Euler 
 *      -> valor final e' o ultimo no vetor
 */
function [u]=euler_int(t_dado, u_dado, t_final, n_intervalos, com_grafico)
    t(1)=1; // t(0) -> init
    u(t_dado+1)=u_dado; // deve ser t_dado+1 nese caso
    h=(t_final-t(1))/n_intervalos;
    for n=1:n_intervalos
        t(n+1)=t(n)+h;
        u(n+1)=u(n)+h*f(t(n),u(n));
    end
    ufinal=u(n+1);
    if com_grafico then
        plot(t,u,'r.-');xgrid
    end
endfunction

disp("*************************************************");
disp(">>>>> NAO esquece de trocar a funcao f(t,u) <<<<<");
disp("*************************************************");
// Funcao u' (DERIVADA)
function y=f(t,u)
    y=sin(u);
endfunction
