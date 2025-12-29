% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado b

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

[t,y,w,coef]=rectangular_c(5,0.5,5,-30,30,50,0);
[w,F1]=espectro(t,y,5);
figure('Name','ESPECTRO','NumberTitle','off');
plot(w,abs(F1))