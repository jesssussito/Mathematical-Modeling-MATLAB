%Ejercicio 1C, Sesion 3

% FUNCION rectangular_c
% [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCION espectro
% [w,F]=espectro(t,x,P)

V=3;
tau=0.004;
T=0.04;
tmin=-0.4;
tmax=0.4;
m=50;
t0=0;


[w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0);
[w1,F1]=espectro(t , y, T);
plot(w1,F1);

hold on;
%plot(w,coef);
%hold off;
F2=3*0.004*(sin(0.004*w1./2)./(0.004*w1./2));
plot(w1,F2);
