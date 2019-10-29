function [dataHisto,alfa,entropy,eHuffman,groupEntropy,numMedBits,histoGroup,alfaG] = rText(signal)
signal = erase(signal,[char(10),char(13),char(63),"-"," ","'",".","!","?",",","","@",'"',"%","*","+","_","-","\t","»","«","<",">"," ",";",":","(",")","[","]","{","}","/","¨","'",newline]);
[dataHisto,alfa] = createHistogram(signal,1,[65:1:90,97:122]);
entropy = calcEntropy(dataHisto,alfa);
eHuffman = huffmanBits(dataHisto);
[groupEntropy,numMedBits,histoGroup,alfaG] = group(double(signal),16,0);


end
