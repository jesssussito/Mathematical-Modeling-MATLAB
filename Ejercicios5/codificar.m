function coded=codificar(ind,n,b)
code = de2bi(ind,n,b,'left-msb'); % Convertimos el valor decimal a binario/ternario/cuaternario
l1=numel(ind);
k=1;
for i=1:l1
    for j=1:n
        coded(k)=code(i,j);                  % Convertimos la matriz a un vector
        k=k+1;
    end
    
end
end