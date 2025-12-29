% SESIÓN 2 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado b

A1 = 1;             % Amplitud 1 = 1
A2 = 1/3;           % Amplitud 2 = 1/3
w = 2*pi;           % Freciencia = 2π
t = 0:0.01:5;       % Tiempo entre 0 y 5 con incremento de 0.01

% Primera gráfica CON NIVEL DE CONTINUA
y = 1 + A1*sin(w*t) + A2*sin(3*w*t);
figure('Name','CON y SIN nivel de continua','NumberTitle','off');
plot(t,y,'-r');

% Segunda gráfica SIN NIVEL DE CONTINUA
hold on
y = A1*sin(w*t) + A2*sin(3*w*t);
plot(t,y,'-b');
hold off