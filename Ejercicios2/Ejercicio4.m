% SESIÓN 2 SEÑALES Y SISTEMAS
% Ejercicio 4

% FUNCIÓN rectangular_triangular
% [t,y,w,coef]=rectangular_triangular(V,tau,T,tmin,tmax,m)

% V = 5
% τ = 0.5
% T = 1
% tmin = -3 || tmax = 3
% m = 50
[t,y,w,coef]= triangular(5,0.5,1,-3,3,500);
figure('Name','PULSOS TRIANGULARES','NumberTitle','off');
plot(t,y)