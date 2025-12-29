%Ejercicio 1B, Sesion 3

% FUNCION rectangular_c
% [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCION espectro
% [w,F]=espectro(t,x,P)

[w,coef,t,y]=rectangular_c(3,0.004,0.04,-0.4,0.4,50,0);
%utilizamos los valores obtenidos mediante rectangular_c
[w1,F]=espectro(t,y,0.04);


plot(w1,F);
%hold on;
stem(w,coef);
%hold off;
