% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado d

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

% FUNCIÓN redRC
% y=redRC(w,w0)

[t,y,w,coef]=rectangular_c(5,0.5,5,-30,30,50,0);
[w,F1]=espectro(t,y,5);
figure('Name','DIFERENCIA ESPECTROS | w0 = 4*pi/5','NumberTitle','off');
plot(w,abs(F1));

% Comparación con w0 = 4*pi/5
hold on
w0 = 4*pi/5;
sistema1=redRC(w,w0);

G1=F1.*sistema1;
plot(w,abs(G1))
hold off

pause;

% Comparación con w0 = 4*pi
figure('Name','DIFERENCIA ESPECTROS | w0=4*pi','NumberTitle','off');
plot(w,abs(F1));

hold on
w0 = 4*pi;
sistema1=redRC(w,w0);

G1=F1.*sistema1;
plot(w,abs(G1))
hold off

pause;

% Comparación con w0 = 200*pi
figure('Name','DIFERENCIA ESPECTROS | w0=200*pi','NumberTitle','off');
plot(w,abs(F1));

hold on
w0 = 200*pi;
sistema1=redRC(w,w0);

G1=F1.*sistema1;
plot(w,abs(G1))
hold off