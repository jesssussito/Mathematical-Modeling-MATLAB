% SESIÓN 3 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado a

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% T = 5
% V = 5
% τ = 0.5
% t = 0
% tmin = -30 || tmax = 30
% m = 50
[t,y,w,coef] = rectangular_c(5,0.5,5,-30,30,50,0);
figure('Name','TREN DE PULSOS RECTANGULARES','NumberTitle','off');
plot(t,y)