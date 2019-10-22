function [dataHisto,alfa,entropy,eHuffman] = rSound(signal)
signal = signal (:);
[dataHisto,alfa] = createHistogram(signal,0);
entropy = calcEntropy(dataHisto,alfa);
disp(entropy);
%group(signal,alfa);
eHuffman = huffmanBits(dataHisto);
end

