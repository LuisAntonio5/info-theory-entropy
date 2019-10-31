function [dataHisto,alfa,entropy,eHuffman,groupEntropy,numMedBits,histoGroup,alfaG] = rImg(signal)
ALFABETO = 0:255;
signal = signal (:);
[dataHisto,alfa] = createHistogram(signal,0,ALFABETO);
entropy = calcEntropy(dataHisto,ALFABETO);
[eHuffman] = huffmanBits(dataHisto);
[groupEntropy,numMedBits,histoGroup,alfaG] = group(signal,8,ALFABETO,0);
%disp(entropy);
end

