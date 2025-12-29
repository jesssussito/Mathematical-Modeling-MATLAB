% SESIÓN 2 SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado d

% FUNCIÓN rectangular_b.m
% [t,y,w,coef]=rectangular_b(V,tau,T,tmin,tmax,m,t0)

% V = 5
% τ = 0.5
% T = 1
% tmin = -3 || tmax = 3
% m = 10
% t0 = 0.7
[t,y,w,coef]=rectangular_b(5,0.5,1,-3,3,10,0.7);
figure('Name','Diferencia con t0','NumberTitle','off');
plot(t,y);

hold on
[t,y,w,coef]=rectangular_b(5,0.5,1,-3,3,10,0);
plot(t,y);
hold off

% Mostramos los coeficientes
coef


% 1. Valor coeficientes primeros 10 armónicos:
%    Vemos que presenta armónicos tanto para la parte positiva, como para
%    la parte negativa:
%
%    Columns 1 through 7
% 
%       0.0000 - 0.0000i  -0.0546 + 0.1682i   0.0000 + 0.0000i  -0.1839 + 0.1336i   0.0000 + 0.0000i  -0.3183 + 0.0000i  -0.0000 + 0.0000i
% 
%    Columns 8 through 14
% 
%       -0.4292 - 0.3118i  -0.0000 + 0.0000i  -0.4918 - 1.5137i   2.5000 + 0.0000i  -0.4918 + 1.5137i  -0.0000 - 0.0000i  -0.4292 + 0.3118i
% 
%    Columns 15 through 21
% 
%       -0.0000 - 0.0000i  -0.3183 - 0.0000i   0.0000 - 0.0000i  -0.1839 - 0.1336i   0.0000 - 0.0000i  -0.0546 - 0.1682i   0.0000 + 0.0000i
%
%
% 2. Diferencia fundamental con los coeficientes de la señal sin desplazar
%    Los coeficientes de la señal desplazada presentan una parte imaginaria
%
% 3. En este caso el valor del coeficiente principal es:
%    2.5000 + 0.0000i y se encuentra en el centro del vector de
%    coeficientes