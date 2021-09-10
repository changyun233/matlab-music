function data=waveGen(time,freq,laud,fs)
    harmonicArray=[1 0.35 0.23 0.12 0.04 0.08 0.08 0.08 0.12 ; 1 0.47 0.35 0.12 0.14 0.08 0.11 0.7 0.16;1 0.24 0.37 0.17 0.24 0.13 0.19 0.05 0.05];% 0.35 0.23 0.12 0.04 0.08 0.08 0.08 0.12
    if(freq<263)
        flag=1;
    else
        if(freq<445)
            flag=2;
        else
            flag=3;
        end
    end
    %谐波数组
    lengthHarmonic=length(harmonicArray);
    data=0;
    for i=1:lengthHarmonic
        data=sin(2*pi*i*freq*(0:round(time*fs))/fs)*harmonicArray(flag,i)+data;
    end

    asr=adsr(time,fs);
    lengthReq=length(data)-length(asr);
    asr=[asr,zeros(1,lengthReq)];
    data=data.*asr;
    data=data/max(abs(data)).*laud;
end
