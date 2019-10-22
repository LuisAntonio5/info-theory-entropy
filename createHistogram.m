function [res,alfa] = createHistogram(signal,text)
%cria um histograma da fonte passada como parametro
%mostra ou nao o plot
%IMPORTANTE: res(i) é o numero de ocorrencias de edges(i)
alfa = unique(double(signal));
alfa = alfa(:);
%faz com que o ultimo valor seja considerado
res = histcounts(double(signal),[alfa; max(alfa)+1]);
end