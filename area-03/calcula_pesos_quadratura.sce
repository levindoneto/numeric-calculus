clear
/**
 * vetor_nodes: vetor x de nos
 * lim_inicial: limite inicial da integral
 * lim_final: limite final da integral
 * 
 * w: vetor de pesos (retorno)
 */
function w=pesos(vetor_nodes, lim_inicial, lim_final)
    len_nodes = length(vetor_nodes);
    
    // Monta matriz A
    for i=1:len_nodes
        for j=1:len_nodes
            if (i == 1) then
                A(i,j) = i; // 1a linha so' tem 1s
            else
                A(i,j) = vetor_nodes(j)^(i-1);
            end    
        end
    end
    
    // Monta matriz resultado b
    for i=1:len_nodes
        B(i) = (lim_final^i - lim_inicial^i)/i;
    end
    
    // Obtem pesos
    w=inv(A)*B;
endfunction
