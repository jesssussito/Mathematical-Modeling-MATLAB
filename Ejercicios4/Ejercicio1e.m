% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado e


% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN inv_espectro
% [t,f]=inv_espectro(w,F,P)

% Comparación de distorsión con w0 = 4*pi/5
[t,y,w,coef]=rectangular_c(5,0.5,5,-30,30,50,0);
figure('Name','DISTORSION | w0 = 4*pi/5','NumberTitle','off');
plot(t,y)

[w,F1]=espectro(t,y,5);

w0 = 4*pi/5;
sistema1=redRC(w,w0);
G1=F1.*sistema1;

hold on
[t2,y2]=inv_espectro(w,G1,5);
plot(t2,y2)
hold off

pause;

% Comparación de distorsión con w0 = 4*pi
figure('Name','DISTORSION | w0 = 4*pi','NumberTitle','off');
plot(t,y)

w0 = 4*pi;
sistema1=redRC(w,w0);
G1=F1.*sistema1;

hold on
[t2,y2]=inv_espectro(w,G1,5);
plot(t2,y2)
hold off

pause;

% Comparación de distorsión con w0 = 200*pi
figure('Name','DISTORSION | w0 = 200*pi','NumberTitle','off');
plot(t,y)

w0 = 200*pi;
sistema1=redRC(w,w0);
G1=F1.*sistema1;

hold on
[t2,y2]=inv_espectro(w,G1,5);
plot(t2,y2)
hold off