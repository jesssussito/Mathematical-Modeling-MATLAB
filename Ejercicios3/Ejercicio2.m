% SESIÓN 3 SEÑALES Y SISTEMAS
% Ejercicio 2

% FUNCIÓN inv_espectro
% [t,f]=inv_espectro(w,F,P)
% Esta función se utiliza para pasar las figuras obtenidas en el dominio de
% la frecuencia a dominio del tiempo, obteniendo de esta manera un tren de
% pulsos rectangulares en F1 y un único pulso rectangular en F2.

[t,y,w,coef] = rectangular_c(5,0.5,5,-30,30,50,0);
[w_esp,F1] = espectro(t,y,5);

[t,f] = inv_espectro(w_esp,F1,60);
figure('Name','inv_espectro(F1)','NumberTitle','off');
plot(t,f,'-b')

F2 = 5*0.5*((sin((0.5*w_esp)/2)./((0.5*w_esp)/2)));

[t,f] = inv_espectro(w_esp,F2,60);
figure('Name','inv_espectro(F2)','NumberTitle','off');
plot(t,f,'-r')