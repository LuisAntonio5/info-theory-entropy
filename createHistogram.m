function [res,alfa] = createHistogram(signal, showHist)
%cria um histograma da fonte passada como parametro
%mostra ou nao o plot
%IMPORTANTE: res(i) é o numero de ocorrencias de edges(i)
alfa = unique(signal);
%faz com que o ultimo valor seja considerado
res = histcounts(signal,[alfa; max(alfa)+1]);
if(showHist ~= 0)
    figure(1);
    %perguntar quantas barras usar
    hist(signal,20);
    grid on;
end
end