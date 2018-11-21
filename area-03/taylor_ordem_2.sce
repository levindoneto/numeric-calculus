clear
/************************************************
 *      NAO ESQUECER DE MUDAR A u' e a u''      *
 ************************************************/
 
/**
 * t_dado, u_dado: u dado -> u(t_dado) = u_dado
 * t_final: tempo final   -> u(t_final)
 * h: tamanho do intervalo
 * com_grafico: plota grafico da funcao se %T e nao se %F
 * 
 * [u]: aproximacao com o metodo de Taylor de segunda ordem 
 *      -> valor final e' o ultimo no vetor
 */
function [u]=taylor(t_dado, u_dado, t_final, h, com_grafico)
    t(1) = 1; // t(0) -> init
    u(t_dado) = u_dado; // condicao inicial do PVI
           
    Nint = (t_final-t(1))/h; // numero de intervalos
    for n=1:Nint
        t(n+1) = t(n)+h;
        F = f(t(n),u(n));
        Ft = ft(t(n),u(n));
        u(n+1) = u(n) + h*F + (h^2/2)*Ft;
    end
    ultimo = u(Nint+1);
    if com_grafico then
        plot(t,u,'r.-');xgrid
    end
endfunction

disp("*************************************************************");
disp("*>>>> NAO esquece de trocar a u_linha e a u_duas_linhas <<<<<");
disp("*************************************************************");
// Funcao u' (DERIVADA DE PRIMEIRA ORDEM)
function y=f(t,u)
    y=u*t;
endfunction

// Funcao u' (DERIVADA DE SEGUNDA ORDEM)
function y=ft(t,u)
    y=(u*t^2)+u;
endfunction
