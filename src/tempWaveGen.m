function data=tempWaveGen(time,freq,laud,fs)
    harmonicArray=[1 0.35 0.23 0.12 0.04 0.08 0.08 0.08 0.12];
    %谐波数组
    lengthHarmonic=length(harmonicArray);
    Fs=8192;
    x=linspace(0,2*pi*time,floor(Fs*time));
    %生成一个线性数组
    data=0;
    for i = 1:1:lengthHarmonic
        data=data+harmonicArray(i)*sin(2*pi*freqs(tone,oct).*x.*i);
    end
    data=data.*(x*(2*pi*time-x)*2.718282828.^(1-x)/(pi*x)/pi*x));
end
