clear
/**
 * a: limite esquerdo
 * b: limite direito
 * n: numero de iteracoes/intervalos
 * S: area apos integrar a funcao
 *
 * >>> n=abs((a-b)/h) caso n nao seja dado
 */
function S=trapezio(a,b,n)
    h=(b-a)/n;
    x=linspace(a,b,n+1); // cria vetor de a ate' b com n+1 pontos
    S=0;
    for i=1:n // percorre todos intervalos
        x1 = x(i); // esquerda do intervalo
        x2 = x(i+1); // direita do intervalo
        A1 =1/2;
        A2 =1/2;
        dS =(A1*f(x1)+A2*f(x2))*h; // aprox. da area ds
        S=S+dS;
    end
endfunction

// Funcao a ser integrada e' dada por y
function y=f(x)
    y=sin(cos(2*x));
endfunction

// Devolve a integral definida da funcao para comparacao com metodos iterativos
function v=integral(limiteEsquerda, limiteDireita, funcao)
    v = intg(limiteEsquerda, limiteDireita, funcao);
endfunction

// valor da integral fica em trapezio(inicio, fim, numero_intervalos)
// valor da funcao fica em f(valor_x)

