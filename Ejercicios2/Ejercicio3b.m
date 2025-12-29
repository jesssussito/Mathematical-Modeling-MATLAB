% SESIÓN 2 SEÑALES Y SISTEMAS
% Ejercicio 3
% Apartado b

% FUNCION rectangular.m
% [t,y,w,coef]=rectangular(V,tau,T,tmin,tmax,m)

% V = 5
% T = 5
% tmin = -50 || tmax = 50

% τ = 0.5 || m = 100
[t,y,w,coef]=rectangular(5,0.5,5,-50,50,100);
figure('Name','τ = 0.5 || τ = 1 || τ = 3','NumberTitle','off');
stem(w,coef)

% τ = 1 || m = 100
hold on
[t,y,w,coef]=rectangular(5,1,5,-50,50,100);
stem(w,coef)
hold off

% τ = 3 || m = 100
hold on
[t,y,w,coef]=rectangular(5,3,5,-50,50,100);
stem(w,coef)
hold off