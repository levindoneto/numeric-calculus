clear
/** Somas de riemmann a esquerda
 * a: limite esquerdo
 * b: limite direito
 * n: numero de iteracoes
 * S: area apos integrar a funcao
 */
function S=riemmann(a,b,n)
    h=(b-a)/n
    x=linspace(a,b,n+1)
    S=0
    for i=1:n
        A=f(x(i))*h
        S=S+A
    end
endfunction

// Funcao a ser integrada e' dada por y
function y=f(x)
    y=cos(2*x)
endfunction

// Devolve a integral definida da funcao para comparacao com metodos iterativos
function v=integral(limiteEsquerda, limiteDireita, funcao)
    v = intg(limiteEsquerda, limiteDireita, funcao)
endfunction

// valor da integral fica em riemmann(inicio, fim, numero_intervalos)
// valor da funcao fica em f(valor_x)
