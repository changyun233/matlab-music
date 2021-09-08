function asr=adsr(time,fs)
    asr=0;
    div=[0.02 0.38 0.3 0.3];
    %adsr四个阶段的占比
    st=0.6;
    x=linspace(0,div(1)*time,div(1)*time*fs);
    asr=2^20.^x-1;
    x=linspace(0,div(2)*time,div(2)*time*fs);
    asr=[asr,(st^(1/0.35)).^x];
    x=linspace(st,st,div(3)*time*fs);
    asr=[asr,x];
    x=linspace(0,div(4)*time,div(4)*time*fs);
    asr=[asr,(0.3.^x*st)];
end