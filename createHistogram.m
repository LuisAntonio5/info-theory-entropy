function [res,alfa] = createHistogram(signal,text,alfa)
%cria um histograma da fonte passada como parametro
%mostra ou nao o plot
%IMPORTANTE: res(i) é o numero de ocorrencias de edges(i)
if(nargin ~= 3)   
    alfa = unique(double(signal));
    alfa = alfa(:);
end
%faz com que o ultimo valor seja considerado
res = histcounts(double(signal),[alfa(:); max(alfa)+1]);
end