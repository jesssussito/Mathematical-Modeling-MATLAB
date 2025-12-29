% SESIÓN 2 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado a.

A = 1;              % Amplitud = 1
f = 2;              % Frecuencia = 2 Hz
fase = pi/3;        % Fase = π/3
t=0:0.01:5;         % Tiempo entre 0 y 5 con incremento de 0.01

% Representamos gráficamente la función
y = A*sin(2*pi*f*t+fase);
plot(t,y,'-r');