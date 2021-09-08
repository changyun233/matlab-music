Fs=8000;
data=[];
%tones为乐谱，每行表示一个音符，第一列表示时间，单位秒，第二行为音名，第三行为八度
tones=[0.5,5,4;0.25,5,4;0.25,6,4;1,2,4;0.5,1,4;0.25,1,4;0.25,6,3;1,2,4];
lengthMusic=length(tones(:,1));

for i = 1:1:lengthMusic
    freq=freqc(tone2midi(tones(i,2),0,tones(i,3),4,1,0));
    tempWave=waveGen(tones(i,1),freq,1,Fs);
    data=[data,tempWave];
end
data=data/max(abs(data));
plot(data);
sound(data);