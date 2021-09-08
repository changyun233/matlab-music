midiOrgin=readmidi("./jesu.mid");
midiProc=midiInfo(midiOrgin,0);

fs=8192;
musicLength=ceil((midiProc(end,6)+15)*fs);
z=zeros(musicLength,1);

for i=1:size(midiProc)
    timeBegin=midiProc(i,5);
    timeEnd=midiProc(i,6);
    laud=midiProc(i,4)/100;
    tone=midiProc(i,3);
    freq=freqc(tone);

    x=waveGen(timeEnd-timeBegin,freq,laud,fs);
    nBegin=max(1,round(timeBegin*fs));
    z(nBegin:nBegin+length(x)-1)=z(nBegin:nBegin+length(x)-1)+x';
end

z=z/max(abs(z));

