function H=FiltroB(w)
     [b,a]=butter(8,4000*2*pi,'high','s');
     H=freqs(b,a,w);
end