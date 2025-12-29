% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado a

t=0:0.005:4;        % t = inicio:incremento:fin

w1=2*pi;
w2=6*pi;
w3=8*pi;

A1=1;
A2=-1/3;
A3=1/4;

y=A1*cos(w1*t)+A2*cos(w2*t)+A3*cos(w3*t);
figure('Name','SEÑAL EN EL DOMINIO DEL TIEMPO','NumberTitle','off');
plot(t,y)