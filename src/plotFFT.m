function [fre,ff]=plotFFT(sig,fs)
    N = length(sig);
    fre = (0:N-1)/N*fs;
    ff=abs(fft(sig));
    plot(fre,ff);
end
