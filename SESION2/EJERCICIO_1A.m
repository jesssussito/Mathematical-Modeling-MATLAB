%Ejercicio 1A, Sesion 2

A = 6;              % Amplitud: 6
f = 5;              % Frecuencia: 5 Hz
fase = pi/4;        % Fase: pi/4
t=0:0.001:2;        % Tiempo entre 0 y 2 incremententandose en 0.001

y = A*sin(2*pi*f*t+fase);
plot(t,y);