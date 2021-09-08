function data=waveGen(time,freq,laud,fs)
    harmonicArray=[1 0.35 0.23 0.12 0.04 0.08 0.08 0.08 0.12];% 0.35 0.23 0.12 0.04 0.08 0.08 0.08 0.12
    %谐波数组
    lengthHarmonic=length(harmonicArray);
    %x=linspace(0,2*pi*time,floor(fs*time));
    %生成一个线性数组
    data=0;
    for i=1:lengthHarmonic
        data=sin(2*pi*i*freq*(0:round(time*fs))/fs)*harmonicArray(i)+data;
    end
    data=data/max(abs(data)).*laud;
    %data=data.*(x.*(2*pi*time-x)).*2.718282828.^(1-x)/(pi*x)/pi*x;
end