% SESIÓN 2 SEÑALES Y SISTEMAS 
% Ejercicio 2
% Apartado b

% FUNCION rectangular.m
% [t,y,w,coef]=rectangular(V,tau,T,tmin,tmax,m)

% 1a variación con V
[t,y,w,coef]=rectangular(1,0.5,1,-3,3,400);
figure('Name','Diferencia de Amplitud','NumberTitle','off');
plot(t,y);

% 2a variación con V
hold on
[t,y,w,coef]=rectangular(10,0.5,1,-3,3,400);
plot(t,y);
hold off

% 1a variación con τ
[t,y,w,coef]=rectangular(5,0.1,1,-3,3,400);
figure('Name','Diferencia de τ','NumberTitle','off');
plot(t,y);

% 2a variación con τ
hold on
[t,y,w,coef]=rectangular(5,0.7,1,-3,3,400);
plot(t,y);
hold off

% 1a variación con T
[t,y,w,coef]=rectangular(5,0.5,1,-3,3,400);
figure('Name','Diferencia de Periodo','NumberTitle','off');
plot(t,y);

% 2a variación con T
hold on
[t,y,w,coef]=rectangular(5,0.5,1.7,-3,3,400);
plot(t,y);
hold off