function freqs=freqc(midi)
    %根据标准midi音符表示格式计算出频率
    freqs = (440/32)*2.^((midi-9)/12);
end
