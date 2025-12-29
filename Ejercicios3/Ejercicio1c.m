% SESIÓN 3 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado c

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

[t,y,w,coef] = rectangular_c(5,0.5,5,-30,30,50,0);
[w_esp,F1] = espectro(t,y,5);
figure('Name','plot(w,F1) [b] || plot(w,F2) [r]','NumberTitle','off');
plot(w_esp,F1,'-b')

hold on
F2 = 5*0.5*((sin((0.5*w_esp)/2)./((0.5*w_esp)/2)));
plot(w_esp,F2,'-r')
hold off

% Es un espectro continuo debido a que se trata de una señal NO periodica