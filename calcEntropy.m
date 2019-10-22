function [entropy] = calcEntropy(dataHisto,alfa)
entropy = 0;
for i=1:length(alfa)
    prob = dataHisto(i)/(sum(dataHisto));
    entropy = entropy + prob * log2(1/prob);
end
end


