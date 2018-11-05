clear
/**
 * Se diz pra extrapolar/interpolar em menos pontos,
 * só meter menos pontos nos vetores abaixo
 */
x=[1 2 3 4]'
y=[3 4 7 6]'
n=length(x)
plot(x,y,'ro-'),xgrid

// Monta matriz de Vandermonde
for i=1:n
    for j=1:n
        V(i,j)=x(i)^(j-1)
    end
end

a=inv(V)*y

X=4.1 // x para interpolar
// Caso desejar descobrir apenas um ponto, X=valor que deseja interpolar
// Chamar "p" no scilab ao final da execucao
p=0
for k=1:n
    p=p+a(k)*X.^(k-1) //Monta o polinomio
end
plot(X,p,'b.-')
