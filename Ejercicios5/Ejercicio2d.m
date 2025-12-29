% SESIÓN 5 - SEÑALES Y SISTEMAS
% Ejercicio 2
% Apartado d

% FUNCIÓN espectro.m
% [w,F]=espectro(t,x,P)

% FUNCIÓN cuantizar.m
% [q,ind]=cuantizar(s,vmin,vmax,n)

% FUNCIÓN codificar.m
% coded=codificar(ind,n,b)

% FUNCIÓN decodificar.m
% q=decodificar(coded,n,b,vmin,vmax)

% FUNCIÓN espectro_s.m
% [fshift,powershift]=espectro_s(y,fs)

f=442;              % Frecuencia de 'LA'
A=1;
duration=100*2/f;   % Reemplazar por duration=100*2/f para escuchar más tiempo
fs=2000*pi*2;       % Frecuencia de muestreo
t=0:1/fs:duration;

% Tres armonicos con el sonido 'LA'
s1 = A*1*cos(2*pi*f*t);
s2 = A*0.5*cos(2*2*pi*f*t);
s3 = A*0.2*cos(3/2*2*pi*f*t);
y = (s1+s2+s3);
%sound(y,fs);

% Para calcular el periodo de la función espectro:
% 1*442, 2*442, 3/2*442 --> 2, 4, 3 --> 2/442
[w,F]=espectro(t,y,0.0045);

% CUANTIZACIÓN DE LA SEÑAL (CON VARIACIÓN EN LOS NIVELES DE CUANTIZACIÓN)
vmax=1.7;
vmin=-0.95;
m=2;                % 4 niveles de cuantización

[q,index]=cuantizar(y,vmin,vmax,m);

% CODIFICACIÓN Y DECODIFICACIÓN SEÑAL BINARIA
% CODIFICAMOS LA SEÑAL
b=2; % Codificación binaria

pulsos=ceil(log2(2^m)/log2(b));               % Cantidad de pulsos que representa la muestra
c=codificar(index,m,b);
tc=0:1/(fs*pulsos):(numel(c)-1)/(fs*pulsos);  % Tiempos duración de cada código
figure('Name','SEÑAL CODIFICADA BINARIA','NumberTitle','off');
%indices=1:numel(t>=1 & t<=1.001); %representamos solo el entre el instante 1 y 1.1
indices=t>=0 & t<=1.01;
subplot(2,1,1)
stairs(t(indices),q(indices));

indicesc=tc>=0 & tc<=0.01;                    % Representa solo el instante entre 0 y 0.1
subplot(2,1,2)
stairs(tc(indicesc),c(indicesc));

% DECODIFICAMOS LA SEÑAL
q=decodificar(c,m,b,vmin,vmax);
figure('Name','SEÑAL DECODIFICADA BINARIA','NumberTitle','off');
plot(t,y);
hold on;
plot(t,q);
sound(q,fs);
hold off

pause();

% FILTRO
% Frecuencia < 442
qf=lowpass(q,350,fs,'ImpulseResponse','iir','Steepness',0.5);
figure('Name','SEÑAL CON FILTRO PASA BAJA | f=350','NumberTitle','off');
plot(t,y);
hold on;
plot(t,qf);
sound(qf,fs);

% Espectros después del filtro
figure('Name','ESPECTROS DESPUÉS DEL FILTRO','NumberTitle','off');
[w2,F2]=espectro_s(qf,fs);
plot(f,abs(F)); 
hold on
plot(w2,abs(F2));
hold off

pause();

% FILTRO
% Frecuencia ~ 442
qf=lowpass(q,500,fs,'ImpulseResponse','iir','Steepness',0.5);
figure('Name','SEÑAL CON FILTRO PASA BAJA | f=500','NumberTitle','off');
plot(t,y);
hold on;
plot(t,qf);
sound(qf,fs);

% Espectros después del filtro
figure('Name','ESPECTROS DESPUÉS DEL FILTRO','NumberTitle','off');
[w2,F2]=espectro_s(qf,fs);
plot(f,abs(F)); 
hold on
plot(w2,abs(F2));
hold off

pause();


% FILTRO
% Frecuencia > 442
qf=lowpass(q,800,fs,'ImpulseResponse','iir','Steepness',0.5);
figure('Name','SEÑAL CON FILTRO PASA BAJA | f=800','NumberTitle','off');
plot(t,y);
hold on;
plot(t,qf);
sound(qf,fs);

% Espectros después del filtro
figure('Name','ESPECTROS DESPUÉS DEL FILTRO','NumberTitle','off');
[w2,F2]=espectro_s(qf,fs);
plot(f,abs(F)); 
hold on
plot(w2,abs(F2));
hold off