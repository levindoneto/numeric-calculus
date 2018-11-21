clear
/*************************************************
 *          NAO ESQUECER DE MUDAR A f(t,u)       *
 ************************************************/
 
/**
 * t_dado, u_dado: u dado -> u(t_dado) = u_dado
 * t_final: tempo final -> u(t_final)
 * n_intervalos: numero de intervalos
 * com_grafico: plota grafico da funcao se %T e nao se %F
 * 
 * [u]: aproximacao com o metodo de Heun
 *      -> valor final e' o ultimo no vetor
 */
function [u]=heun(t_dado, u_dado, t_final, n_intervalos, com_grafico)
    t(1)=1;
    u(t_dado+1)= u_dado;
    h=(t_final)/n_intervalos;
    for n=1:n_intervalos
        t(n+1)=t(n)+h;
        util=u(n)+h*f(t(n),u(n));
        F1=f(t(n),u(n));
        F2=f(t(n+1),util);
        u(n+1)=u(n)+(h/2)*(F1+F2);
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
    y=u^2;
endfunction
