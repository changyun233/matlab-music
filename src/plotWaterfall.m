function plotWaterfall(s,fs,spectsize,spectnum)

freq=[0:fs/spectsize:fs/2]
offset=floor((length(s)-spectsize)/spectnum);
for i=0:(spectnum-1)
    start=i*offset;
    A=abs(fft(s((1+start):(start+spectsize))));
    magnitude(:,(i+1))=A(1:spectnum/2+1);
end
waterfall(freq,0:(spectnum-1),magnitude');
