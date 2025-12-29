% SESIÓN 4 SEÑALES Y SISTEMAS
% Ejercicio 3
% Apartado d

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

% FILTRO B
HB=FiltroB(w);
GB=F.*HB;

figure('Name','COMPARACIÓN ESPECTROS EN AMPLITUD | Espectro [b] - FiltroA [r]','NumberTitle','off');
hold on
plot(w,abs(F),'-b');
plot(w,abs(GB),'-r');
hold off

[ta,ya]=inv_espectro(w,GB,tfin);
% Reproducir audio resultante: 
% sound(ya,44100);