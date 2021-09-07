function freqs=freqs(midi)
    %根据标准midi音符表示格式计算出频率
    freqs=220*2^(midi-57)/12);
end
