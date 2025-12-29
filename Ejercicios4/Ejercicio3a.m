% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado a

% FUNCIÓN leeraudio
% [t,y,tfin]=leeraudio(cadena)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)


[t,y,tfin]=leeraudio('audio1.wav');
% Reproducir el audio:
% sound(y,44100);       % Señal en el dominio del tiempo y velocidad de muestreo

[w,F]=espectro(t,y,tfin);
figure('Name','ESPECTRO EN AMPLITUD | audio1.wav','NumberTitle','off');
plot(w,abs(F))