% Ejercicio 6
% Producto de todos los elementos de un vector
% cualquiera sin usar 'prod()'
% Utilización de funciones en MatLab

function res = Ejercicio6(v)
    res = 1;
    for i=1:length(v)
        res = res * v(i);
    end
end