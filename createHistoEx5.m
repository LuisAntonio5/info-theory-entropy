function [] = createHistoEx5(binHist,imgHist,landHist,soundHist,textHist)
    figure('name','Distribuição Estatística das fontes dadas Angrupadas','NumberTitle','off');
    subplot(3,2,1);
    bar(binHist);
    title('kid.bmp');
    subplot(3,2,2);
    bar(imgHist);
    title('homer.bmp');
    subplot(3,2,3);
    bar(landHist);
    title('homerBin.bmp');
    subplot(3,2,4);
    bar(soundHist);
    title('guitarSolo.wav');
    subplot(3,2,5);
    bar(textHist);
    title('english.txt');
end