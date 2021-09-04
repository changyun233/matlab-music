function midi=tone2midi(tone,rof,oct,tonality,majo,raise)
    %举例，C大调的C4，输入参数为（1c,0(C音不升不降)，4，1（C调）
    %1（大调）,0（C大调不升不降））
    %举例，升F小调的D3，输入参数为（2（D）,0，3，4（F调）
    %0（minor），1（升调））
    %类似的，降调则输入-1.
    major=[0 2 4 5 7 9 11];
    minor=[0 2 3 5 7 8 10];
    %大调音阶全全半全全全半（2212221）
    %小调音阶全半全全半全全（2122122）
    if(majo>0)
        midi=12*oct+major(tone)+raise+tonality+11+rof;
    else
        midi=12*oct+minor(tone)+raise+tonality+11+rof;
    end
end