function [dataHisto,alfa,entropy,eHuffman] = rImg(signal)
signal = signal (:);
[dataHisto,alfa] = createHistogram(signal,0);
entropy = calcEntropy(dataHisto,alfa);
eHuffman = huffmanBits(dataHisto);
%group(signal,alfa);
%disp(entropy);
end

