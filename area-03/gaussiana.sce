clear
/** Divide o intervalo de a até b em n_intervalos, e em cada intervalo e
 *  utiliza uma quadratura gaussiana com n_nodes (nos) para calcular a
 *  integral de f(x), a qual e' definida apos essa funcao.
 * a: limite esquerdo
 * b: limite direito
 * n: numero de iteracoes
 *
 * S: area apos integrar a funcao
 */
function S=gaussiana(a, b, n_intervalos, n_nodes)
    h=(b-a)/n_intervalos
    x=linspace(a,b,n_intervalos+1)     //cria um vetor que vai de a até b, com n+1 pontos
    // Mapeamento de mudancas de intervalo (t: nodes, w: pesos)//////////
    // n=1
    t1=[0];
    w1=[2]; 
    // n=2
    t2=[-sqrt(3)/3 sqrt(3)/3];
    w2=[1 1]; 
    // n=3
    t3=[0 sqrt(3/5) -sqrt(3/5)];
    w3=[8/9 5/9 5/9]; 
    // n=4
    t4=[sqrt((3-2*sqrt(6/5))/7) -sqrt((3-2*sqrt(6/5))/7) sqrt((3+2*sqrt(6/5))/7) -sqrt((3+2*sqrt(6/5))/7)];
    w4=[(18+sqrt(30))/36 (18+sqrt(30))/36 (18-sqrt(30))/36 (18-sqrt(30))/36]; 
    //n=5
    t5=[0 (1/3)*sqrt(5-2*sqrt(10/7)) -(1/3)*sqrt(5-2*sqrt(10/7)) (1/3)*sqrt(5+2*sqrt(10/7)) -(1/3)*sqrt(5+2*sqrt(10/7))];
    w5=[128/225 (322+13*sqrt(70))/900 (322+13*sqrt(70))/900 (322-13*sqrt(70))/900 (322-13*sqrt(70))/900]; 
    /////////////////////////////////////////////////////////////////////    
    
    S=0 // valor inicial da integral
    // Percorre todos os intervalos para calcular a quadratura em cada uma
    for i=1:n_intervalos
        // Obtem alfa e beta
        alpha=(x(i+1)-x(i))/2
        betha=(x(i+1)+x(i))/2
        
        // Escolhe o alfa e beta de acordo com o numero de nos
        if (n_nodes == 1) then
            x1=alpha*t1(1)+betha;
        elseif (n_nodes == 2) then
            alpha=(x(i+1)-x(i))/2
            betha=(x(i+1)+x(i))/2
            x1=alpha*t2(1)+betha;
            x2=alpha*t2(2)+betha;
            A=(w2(1)*f(x1)+w2(2)*f(x2))*h/2 
        elseif (n_nodes == 3) then
            x1=alpha*t3(1)+betha;
            x2=alpha*t3(2)+betha;
            x3=alpha*t3(3)+betha;
            A=(w3(1)*f(x1)+w3(2)*f(x2)+w3(3)*f(x3))*h/2
        elseif (n_nodes == 4) then
            x1=alpha*t4(1)+betha;
            x2=alpha*t4(2)+betha;
            x3=alpha*t4(3)+betha;
            x4=alpha*t4(4)+betha;
            A=(w4(1)*f(x1)+w4(2)*f(x2)+w4(3)*f(x3)+w4(4)*f(x4))*h/2
        elseif (n_nodes == 5) then            
            x1=alpha*t5(1)+betha;
            x2=alpha*t5(2)+betha;
            x3=alpha*t5(3)+betha;
            x4=alpha*t5(4)+betha;
            x5=alpha*t5(5)+betha;
            A=(w5(1)*f(x1)+w5(2)*f(x2)+w5(3)*f(x3)+w5(4)*f(x4)+w5(5)*f(x5))*h/2
        else
            error("--> Numero de nodes nao mapeado (ultimo paramatero).")
        end
        S=S+A
    end
endfunction

//definição da função
function y=f(x)
    y=sin(sin(sin(x)))
endfunction
