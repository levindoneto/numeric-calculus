clear
n = 36

// TRIDIAGONAL
for i=1:n // itera linhas
    for j=1:n // itera colunas
       if abs(i-j) <= 1 then
           tridiagonal(i,j) = 1
       else
           tridiagonal(i,j) = 0
       end
    end
end

R = tridiagonal*tridiagonal // D*R
count = 0
// CONTA ZEROS DE R
for i=1:n // linhas de R
    for j=1:n // colunas de R
        if R(i,j) <> 0 then
            count = count+1;
        end
    end
end
