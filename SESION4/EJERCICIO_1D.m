% Ejercicio 1D, Sesion 4

% FUNCION espectro 
% [w,F]=espectro(t,x,P)

% FUNCION rectangular_c  
% [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN redRC
% function y=redRC(w,w0)

[w,coef,t,y]=rectangular_c(5,0.002,0.01,-0.1,0.1,50,0);
[w1,F1]=espectro(t,y,0.01);

%REPRESENTAMOS F1
plot(w1,abs(F1));
hold on
%REPRESENTAMOS G1

w0= 200*pi;
sistema1=redRC(w1,w0);

G1=F1.*sistema1;
plot(w1,G1, "red");
plot off