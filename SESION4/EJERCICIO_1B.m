% Ejercicio 1B, Sesion 4

% FUNCION espectro 
% [w,F]=espectro(t,x,P)   y=x


% FUNCION rectangular_c  
% [w,coef,t,y]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

[w,coef,t,y]=rectangular_c(5,0.002,0.01,-0.1,0.1,50,0);
[w1,F1]=espectro(t,y,0.01);
plot(w1,abs(F1));