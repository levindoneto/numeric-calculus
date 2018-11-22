clear
/************************************************
 *     NAO ESQUECER DE MUDAR u', u'' E u'''     *
 ************************************************/
 /** 
  * Usada nas de PVI com numero de digitos significations
  * iteracao n-1: x.iiii... tem que ser igual a
  * iteracao n  : x.iiii... para 4 digitos nesse caso
  *
  * Moral e' meter um numero_intervalos gigante (e.g.100000) 
  * e ver o ultimo valor
  */
 
/**
 * t_dado, u_dado: u dado -> u(t_dado) = u_dado
 * t_final: tempo final   -> u(t_final)
 * numero_intervalos: quantidade de intervalos
 * com_grafico: plota grafico da funcao se %T e nao se %F
 * 
 * [u]: aproximacao com o metodo de Taylor de segunda ordem 
 *      -> valor final e' o ultimo no vetor
 */
function [u]=taylor_2_n(t_dado, u_dado, t_final, numero_intervalos, com_grafico)
    t(1) = 1; // t(0) -> init
    u(t_dado) = u_dado; // condicao inicial do PVI
    h = (t_final-t(1)) / numero_intervalos; // tamanho do intervalo
    for n=1:numero_intervalos
        t(n+1) = t(n)+h;
        F      = f(t(n),u(n));
        Ft     = ft(t(n),u(n));
        u(n+1) = u(n) + h*F + (h^2/2)*Ft;
                   // + ... h^n/n!*derivada de F(tn, un) de ordem n
    end
    ultimo = u(numero_intervalos+1);
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
    y=(u*t^2)+u;
endfunction
