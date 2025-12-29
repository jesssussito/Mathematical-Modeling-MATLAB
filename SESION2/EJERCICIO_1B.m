%Ejercicio 1B, Sesion 2

A1 = 2;             % Amplitud 1: 2
A3 = -1/4;          % Amplitud 3: -1/4
w1 = 2*pi;          % Frecuencia 1: 2pi
w3 = 6*pi;          % Frecuencia 3: 6pi
t = 0:0.001:4;      % Tiempo entre 0 y 4 incrementandose en 0.001

% Grafica con Nivel de Continua
y = 2 + A1*sin(w1*t) + A3*sin(w3*t);
plot(t,y);

hold on

% Grafica sin Nivel de Continua
y = A1*sin(w1*t) + A3*sin(w3*t);
plot(t,y);

hold off