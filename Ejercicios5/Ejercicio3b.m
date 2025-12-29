% SESIÓN 5 - SEÑALES Y SISTEMAS
% Ejercicio 3
% Apartado b

% FUNCIÓN espectro_s.m
% [fshift,powershift]=espectro_s(y,fs)

% FUNCIÓN cuantizar.m
% [q,ind]=cuantizar(s,vmin,vmax,n)

% FUNCIÓN codificar.m
% coded=codificar(ind,n,b)

% FUNCIÓN decodificar.m
% q=decodificar(coded,n,b,vmin,vmax)

[y,fs]=audioread('violinA.wav');
y=y(:,1);
t=0:1/fs:(numel(y)-1)/fs;       % Tiempos con la frecuencia de muestreo
%sound(y,fs);

% Espectro
[w,F]=espectro_s(y,fs);

% CUANTIZACIÓN DE LA SEÑAL (CON VARIACIÓN EN LOS NIVELES DE CUANTIZACIÓN)
vmax=0.1;
vmin=-0.12;
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
plot(w,abs(F)); 
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
plot(w,abs(F)); 
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
plot(w,abs(F)); 
hold on
plot(w2,abs(F2));
hold off