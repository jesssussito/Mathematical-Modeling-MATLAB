% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado a

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

[t,y,w,coef]=rectangular_c(5,0.5,5,-30,30,50,0);
figure('Name','TREN DE PULSOS RECTANGULARES','NumberTitle','off');
plot(t,y)