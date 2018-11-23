clear
/**
 * Ao utilizar o método do trapézio para calcular uma integral com
 * intervalos_depois intervalos temos um erro de aproximadamente
 * erro_antes. Se utilizarmos intervalos_depoisintervalos, de quando
 * será o erro aproximadamente?
 */
function n=erro_trapezio(erro_antes, intervalos_antes, intervalos_depois)
    vezes_mais = intervalos_depois/intervalos_antes
    n = erro_antes/(vezes_mais^2)
endfunction
