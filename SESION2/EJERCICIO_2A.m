% Ejercicio 2A, Sesion 2

% FUNCION rectangular.m
% [w,coef]=rectangular(V,tau,T,tmin,tmax,m)


% Número de armónicos = 5
[w,coef]=rectangular(3,0.2,0.8,-4,4,5);

% Número de armónicos = 15
[w,coef]=rectangular(3,0.2,0.8,-4,4,15);

% Número de armónicos = 50
[w,coef]=rectangular(3,0.2,0.8,-4,4,50);

% Número de armónicos = 100
[w,coef]=rectangular(3,0.2,0.8,-4,4,100);

% Número de armónicos = 400
[w,coef]=rectangular(3,0.2,0.8,-4,4,400);

% Número de armónicos = 1000
[w,coef]=rectangular(3,0.2,0.8,-4,4,1000);
