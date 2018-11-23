clear
/************************************************
 *         NAO ESQUECER DE MUDAR u' E u''       *
 ************************************************/
 
/**
 * t_dado, u_dado: u dado -> u(t_dado) = u_dado
 * t_final: tempo final   -> u(t_final)
 * h: tamanho do intervalo
 * com_grafico: plota grafico da funcao se %T e nao se %F
 * 
 * [u]: aproximacao com o metodo de Taylor de terceira ordem 
 *      -> valor final e' o ultimo no vetor
 */
function [u]=taylor_3(t_dado, u_dado, t_final, h, com_grafico)
    t(1) = 1; // t(0) -> init
    u(t_dado) = u_dado; // condicao inicial do PVI         
    n_intervalos = (t_final-t(1))/h // numero de intervalos
    for n=1:n_intervalos
        t(n+1) = t(n)+h;
        F      = f(t(n),u(n));
        Ft     = ft(t(n),u(n))
        Ftt    = ftt(t(n),u(n))           
        u(n+1) = u(n) + h*F+(h^2/2)*Ft + (h^3/6)*Ftt
                   // + ... h^n/n!*derivada de F(tn, un) de ordem n
    end
    ultimo=u(n_intervalos+1);
    if com_grafico then
        plot(t,u,'r.-');xgrid
    end
endfunction

disp("*************************************************************");
disp("*>>>>        NAO esquece de trocar as derivadas         <<<<<");
disp("*************************************************************");
// Funcao u' (DERIVADA DE PRIMEIRA ORDEM)
function y=f(t,u)
    y=u*t;
endfunction

// Funcao u'' (DERIVADA DE SEGUNDA ORDEM)
function y=ft(t,u)
    y=(u*t)*t+u;
endfunction

// Funcao u''' (DERIVADA DE TERCEIRA ORDEM)
function y=ftt(t,u)
    y=(u*t^3)+2*u*t+u*t;
endfunction
