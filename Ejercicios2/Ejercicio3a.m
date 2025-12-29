% SESIÓN 2 SEÑALES Y SISTEMAS
% Ejercicio 3
% Apartado a

% FUNCION rectangular.m
% [t,y,w,coef]=rectangular(V,tau,T,tmin,tmax,m)

% V = 5
% τ = 0.5
% tmin = -50 || tmax = 50

% T = 1 || m = 100
[t,y,w,coef]=rectangular(5,0.5,1,-50,50,100);
figure('Name','T = 1 || T = 5 || T = 20','NumberTitle','off');
stem(w,coef)

% T = 5 || m = 100
hold on
[t,y,w,coef]=rectangular(5,0.5,5,-50,50,100);
stem(w,coef)
hold off

% T = 20 || m = 100
hold on
[t,y,w,coef]=rectangular(5,0.5,20,-50,50,100);
stem(w,coef)
hold off