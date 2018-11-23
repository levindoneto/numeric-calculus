clear
/**
 * Ao utilizar o método de Simpson para calcular uma integral com h=h_antes
 * temos um erro de aproximadamente erro_antes. Se utilizarmos h=h_depois,
 * de quando será o erro aproximadamente?
 */
function n=erro_simpson(erro_antes, h_antes, h_depois)
    vezes_mais = h_antes/h_depois
    disp(vezes_mais)
    n = erro_antes/(vezes_mais^4)
endfunction
