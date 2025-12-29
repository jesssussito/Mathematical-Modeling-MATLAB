% SESIÓN 3 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado d

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% T = 5
% V = 5
% τ = 0.5
% t = 2
% tmin = -30 || tmax = 30
% m = 50
[t,y,w,coef] = rectangular_c(5,0.5,5,-30,30,50,2);
figure('Name','TREN DE PULSOS RECTANGULARES DESPLAZADO','NumberTitle','off');
plot(t,y)


% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

[w_esp,F] = espectro(t,y,5);
figure('Name','ESPECTRO EN AMPLITUD','NumberTitle','off');
plot(w_esp,abs(F),'-b')