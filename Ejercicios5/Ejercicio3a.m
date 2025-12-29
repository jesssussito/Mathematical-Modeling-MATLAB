% SESIÓN 5 - SEÑALES Y SISTEMAS
% Ejercicio 3
% Apartado a

% FUNCIÓN espectro_s.m
% [fshift,powershift]=espectro_s(y,fs)

[y,fs]=audioread('violinA.wav');
y=y(:,1);
t=0:1/fs:(numel(y)-1)/fs;       % Tiempos con la frecuencia de muestreo
figure('Name','REPRESENTACIÓN EN EL DOMINIO DEL TIEMPO','NumberTitle','off');
plot(t,y);
sound(y,fs);

% Espectro
[w,F]=espectro_s(y,fs);
figure('Name','REPRESENTACIÓN EN EL DOMINIO DE LA FRECUENCIA','NumberTitle','off');
plot(w,abs(F));