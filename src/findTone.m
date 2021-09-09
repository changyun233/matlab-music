
divLength=round(fs/7);
divNum=ceil(length(data)/divLength);
data1Proc=[data;zeros(divNum*divLength-length(data),1)];
data2Proc=reshape(data1Proc,divLength,divNum);
output=zeros(1,divNum);
for i=5:divNum
    output(i)=findFreq(data2Proc(:,i),fs)+0.01;
end  