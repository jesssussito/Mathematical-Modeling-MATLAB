% Ejercicio 1E, Sesion 4


% FUNCION rectangular_c  
% [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN inv_espectro
% [t,f]=inv_espectro(w,F,P)

% FUNCIÓN redRC
% function y=redRC(w,w0)

%Comparacion de la distorsion con w0 = 200*PI

[w,coef,t,y]=rectangular_c(5,0.002,0.01,-0.1,0.1,50,0);
plot(t,y);
[w1,F1]=espectro(t,y,0.01);
wo=20*pi;

sistema1=redRC(w1,w0);
G1=F1.*sistema1;

hold on;
[t2,y2]=inv_espectro(w1,G1,0.01);
plot(t2,y2);
hold off