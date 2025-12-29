% SESIÓN 2 SEÑALES Y SISTEMAS 
% Ejercicio 2
% Apartado a

% FUNCION rectangular.m
% [t,y,w,coef]=rectangular(V,tau,T,tmin,tmax,m)

% Número de armónicos = 5
[t,y,w,coef]=rectangular(5,0.5,1,-3,3,5);
figure('Name','Número de armónicos = 5','NumberTitle','off');
plot(t,y,'-r');

% Número de armónicos = 15
[t,y,w,coef]=rectangular(5,0.5,1,-3,3,15);
figure('Name','Número de armónicos = 15','NumberTitle','off');
plot(t,y,'-r');

% Número de armónicos = 50
[t,y,w,coef]=rectangular(5,0.5,1,-3,3,50);
figure('Name','Número de armónicos = 50','NumberTitle','off');
plot(t,y,'-r');

% Número de armónicos = 100
[t,y,w,coef]=rectangular(5,0.5,1,-3,3,100);
figure('Name','Número de armónicos = 100','NumberTitle','off');
plot(t,y,'-r');

% Número de armónicos = 400
[t,y,w,coef]=rectangular(5,0.5,1,-3,3,400);
figure('Name','Número de armónicos = 400','NumberTitle','off');
plot(t,y,'-r');

% Número de armónicos = 1000
[t,y,w,coef]=rectangular(5,0.5,1,-3,3,1000);
figure('Name','Número de armónicos = 1000','NumberTitle','off');
plot(t,y,'-r');