function escribiraudio(cadena,y,fs)
% PARAMETROS
%     cadena    nombre fichero de salida
%     y         señal en el tiempo de audio
    audiowrite(cadena,y,,fs);
    