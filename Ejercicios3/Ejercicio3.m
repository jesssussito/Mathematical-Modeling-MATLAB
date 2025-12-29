% SESIÓN 3 SEÑALES Y SISTEMAS
% Ejercicio 3

% FUNCIÓN triangular
% [t,y,w,coef]=triangular(V,tau,T,tmin,tmax,m)
% 
% Podemos utilizar la función triangular de la SESIÓN 2 para realizar este
% ejercicio en vez de modificar rectangular_c

% V = 5
% τ = 0.5
% T = 60
% tmin = -30 || tmax = 30
% m = 400

% FUNCIÓN TRIANGULAR τ = 0.5
[t,y,w,coef] = triangular(5,0.5,60,-3,3,400);
figure('Name','TRIANGULAR [τ = 0.5]','NumberTitle','off');
plot(t,y)

[w_esp,F] = espectro(t,y,60);
figure('Name','ESPECTRO TRIANGULAR [τ = 0.5]','NumberTitle','off');
plot(w_esp,angle(F))

pause

% FUNCIÓN TRIANGULAR τ = 2
[t,y,w,coef] = triangular(5,2,60,-3,3,400);
figure('Name','TRIANGULAR [τ = 0.5]','NumberTitle','off');
plot(t,y)

[w_esp,F] = espectro(t,y,60);
figure('Name','ESPECTRO TRIANGULAR [τ = 0.5]','NumberTitle','off');
plot(w_esp,abs(F))

pause

% FUNCIÓN TRIANGULAR τ = 5
[t,y,w,coef] = triangular(5,5,60,-3,3,400);
figure('Name','TRIANGULAR [τ = 0.5]','NumberTitle','off');
plot(t,y)

[w_esp,F] = espectro(t,y,60);
figure('Name','ESPECTRO TRIANGULAR [τ = 0.5]','NumberTitle','off');
plot(w_esp,abs(F))