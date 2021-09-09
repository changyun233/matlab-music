function output = waveproc(input)
    input=resample(input,10,1);
    lengthInput=length(input);
    [temp,max1]=max(input(1:round(lengthInput/3)));
    [temp,max2]=max(input(round(lengthInput*2/3):end));
    max2=max2+round(lengthInput*2/3)-1;
    temp=input(max1:max2);
    lengthT=length(find(findpeaks(temp)>0.8*max(temp)))+1;
    lengthD=length(temp);
    sampleScale=lcm(lengthD,lengthT);
    x = resample(temp,sampleScale,lengthD);
    A = reshape(x,sampleScale/lengthT,lengthT).';
    p = mean(A);
    preal=resample(p,lengthD,sampleScale*10);
    output = repmat(preal.',100,1);
end