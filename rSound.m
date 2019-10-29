function [dataHisto,alfa,entropy,eHuffman,groupEntropy,numMedBits,histoGroup,alfaG] = rSound(signal,nBits)
ALFABETO = -1:1/3500:1;
signal = signal (:);
[dataHisto,alfa] = createHistogram(signal,0,ALFABETO);
entropy = calcEntropy(dataHisto,alfa);
[groupEntropy,numMedBits,histoGroup,alfaG] = group(signal,nBits,1);
eHuffman = huffmanBits(dataHisto);
end

