function H=FiltroA(w)
     [b,a]=butter(8,440*2*pi,'low','s');
     H=freqs(b,a,w);
end