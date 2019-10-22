function [dataHisto,alfa,entropy,eHuffman] = rText(signal)
signal = erase(signal,[char(10),char(13),char(63),"-"," ","'",".","!","?",",","","@",'"',"%","*","+","_","-","\t","»","«","<",">"," ",";",":","(",")","[","]","{","}","/","¨","'",newline]);
[dataHisto,alfa] = createHistogram(signal,1);
entropy = calcEntropy(dataHisto,alfa);
eHuffman = huffmanBits(dataHisto);
group(signal,alfa);


end
