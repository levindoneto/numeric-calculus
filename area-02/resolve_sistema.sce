clear
// Resolve sist.triangular U
function [x]=solveU(U,b)
    n=size(U,1)   // # de linhas
    x(n)=b(n)/U(n,n)
    for i=n-1:-1:1
      x(i)=(b(i)-U(i,i+1:n)*x(i+1:n))/U(i,i)
    end
endfunction

// Resolve sist.triangular
function [x]=solveL(L,b)
    n=size(L,1)   // # de linhas
    x(1)=b(1)/L(1,1)
    for i=2:n
      x(i)=(b(i)-L(i,1:i-1)*x(1:i-1))/L(i,i)
    end
endfunction

// Fatora matriz
function [L,A]=fatoracaoLU(A)
    n=size(A,1)
    L=eye(n,n)
    for j=1:n-1  
      for i=j+1:n  //coluna j 
        L(i,j)=A(i,j)/A(j,j)
        A(i,j+1:n)=A(i,j+1:n)-L(i,j)*A(j,j+1:n)
        A(i,j)=0
      end
    end   
endfunction

// Resolve sistema Ax=b
function x=resolve(A,b)
    [L,U]=fatoracaoLU(A);
    y=solveL(L,b);
    x=solveU(U,y);
endfunction
