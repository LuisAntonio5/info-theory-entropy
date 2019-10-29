function [entropy] = calcEntropy(dataHisto,alfa)
dataHisto = nonzeros(dataHisto);
entropy = 0;
prob = dataHisto/sum(dataHisto);
entropy = sum(-prob.*log2(prob));
end


