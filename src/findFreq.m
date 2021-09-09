function freqc = findFreq(input,fs)
    wave2proc=waveProc(input);
    [ff,fa]=plotFFT(wave2proc,fs);
    fa(find(abs(fa)<10))=0;
    [pks,logs]=findpeaks(fa);
    freqc=0;
    freqc=min(ff(logs));
end