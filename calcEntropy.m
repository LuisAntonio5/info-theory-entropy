function [entropy] = calcEntropy(signal)
[data,alfa] = createHistogram(signal,0);
entropy = 0;
for i=1:length(alfa)
    prob = data(i)/length(signal);
    entropy = entropy + prob * log2(1/prob);
end
end


