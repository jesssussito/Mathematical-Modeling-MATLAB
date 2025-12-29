% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 3
% Apartado c

% IMPORTANTE
% Requiere instalación de addon (DPS System Toolbox) para poder utilizar la
% función 'FiltroA'

% FUNCIÓN leeraudio
% [t,y,tfin]=leeraudio(cadena)

% FUNCIÓN espectro
% [w,F]=espectro(t,x,P)


[t,y,tfin]=leeraudio('audio1.wav');
% Reproducir el audio:
% sound(y,44100);       % Señal en el dominio del tiempo y velocidad de muestreo

[w,F]=espectro(t,y,tfin);

% FILTRO A
HA=FiltroA(w);
GA=F.*HA;

figure('Name','COMPARACIÓN ESPECTROS EN AMPLITUD | Espectro [b] - FiltroA [r]','NumberTitle','off');
hold on
plot(w,abs(F),'-b');
plot(w,abs(GA),'-r');
hold off

[ta,ya]=inv_espectro(w,GA,tfin);
% Reproducir audio resultante
% sound(ya,44100);