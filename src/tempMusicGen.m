Fs=8192;
data=[];
tones=[0.5,5,3;0.25,5,3;0.25,6,3;1,2,3;0.5,1,3;0.25,1,3;0.25,6,2;1,2,3];
lengthMusic=length(tones(:,1));

for i = 1:1:lengthMusic
    data=[data,tempWaveGen(tones(i,1),tones(i,2),tones(i,3))];
end

plot(data)
sound(data)