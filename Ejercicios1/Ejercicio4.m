% Ejercicio 4
% Representar gráficamente funciones usando 'plot'

% Primer rango de 0 a 10 con incremento de 0.1
t = 0:0.1:10;

% Función 1
f1 = sin(3*t) .* cos(t);
figure(1);
plot(t,f1,'-r')

% Función 2
f2 = (sin(t)).^2;
figure(2);
plot(t,f2,'-r')

% Función 3
f3 = (5*t) - 2;
figure(3);
plot(t,f3,'-r')

% Rango para la última figura entre -10 y 10 con
% incremento de 0.1
t = -10:0.1:10;

% Función 4
f4 = sin(t)./t;
figure(4);
plot(t,f4,'-r')