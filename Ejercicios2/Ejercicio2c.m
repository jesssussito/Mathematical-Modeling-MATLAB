% SESIÓN 2 SEÑALES Y SISTEMAS 
% Ejercicio 2
% Apartado c

% FUNCION rectangular.m
% [t,y,w,coef]=rectangular(V,tau,T,tmin,tmax,m)

% V = 5 
% τ = 0.5
% T = 1
% tmin = -3 || tmax = 3
% m = 10
[t,y,w,coef]=rectangular(5,0.5,1,-3,3,10);

% Mostramos los coeficientes obtenidos
coef

% 1. Valor de los 10 primeros armónicos: 
%    2.5000    1.5915    0.0000   -0.5305   -0.0000    0.3183    0.0000   -0.2274   -0.0000    0.1768    0.0000
%
% 2. ¿Algún armónico se anula? ¿Por qué?
%    Si, se anulan los armónicos c2, c5, c6, c8, c10
%
% 3. ¿Cuánto vale el coeficiente c0 y qué representa físicamente?
%    El valor de c0 es 2.5000 y representa
%
