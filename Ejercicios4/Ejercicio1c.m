% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 1
% Apartado c

% FUNCIÓN rectangular_c
% [t,y,w,coef]=rectangular_c(V,tau,T,tmin,tmax,m,t0)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)

% FUNCIÓN redRC
% y=redRC(w,w0)

[t,y,w,coef]=rectangular_c(5,0.5,5,-30,30,50,0);
[w,F1]=espectro(t,y,5);

% Representación con w0 = 4*pi/5
w0 = 4*pi/5;
sistema1=redRC(w,w0);
figure('Name','AMPLITUD | w0 = 4*pi/5','NumberTitle','off');
plot(w,abs(sistema1),'-r')                                          % Con abs(sistema1) sacamos la parte real
figure('Name','FASE | w0 = 4*pi/5','NumberTitle','off');
plot(w,angle(sistema1),'-b')                                        % Con angle(sistema1) sacamos la parte imaginaria

pause;

% Representación con w0 = 4*pi
w0 = 4*pi;
sistema1=redRC(w,w0);
figure('Name','AMPLITUD | w0 = 4*pi','NumberTitle','off');
plot(w,abs(sistema1),'-r')
figure('Name','FASE | w0 = 4*pi','NumberTitle','off');
plot(w,angle(sistema1),'-b')

pause;

% Representación con w0 = 200*pi
w0 = 200*pi;
sistema1=redRC(w,w0);
figure('Name','AMPLITUD | w0 = 200*pi','NumberTitle','off');
plot(w,abs(sistema1),'-r')
figure('Name','FASE | w0 = 200*pi','NumberTitle','off');
plot(w,angle(sistema1),'-b')