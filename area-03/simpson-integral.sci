clear
/**
 * a: limite esquerdo
 * b: limite direito
 * n: numero de iteracoes
 *
 * S: area apos integrar a funcao
 */
function S=simpson(a,b,n)
    h=(b-a)/n; // tamanho do intervalo
    x=linspace(a,b,n+1); // vetor de a ate' b com n+1 elementos
    S=0;
    for i=1:n
        x1=x(i); // extremo esquerdo
        x3=x(i+1); // extremo direito
        x2=x1+h/2; // ponto medio
    
        A1 =1/6;  A2 =4/6; A3=1/6;
        dS =(A1*f(x1)+A2*f(x2)+A3*f(x3))*h;
        S=S+dS;
    end
endfunction

// Funcao para ser integrada
function y=f(x)
    y=cos(2*x);
endfunction

// Devolve a integral definida da funcao para comparacao com metodos iterativos
function v=integral(limiteEsquerda, limiteDireita, funcao)
    v = intg(limiteEsquerda, limiteDireita, funcao);
endfunction

// resposta pode ser obtida em: simpson(inicio,final,numero_intervalos)
