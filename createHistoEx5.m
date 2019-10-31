function [] = createHistoEx5(binHist,imgHist,landHist,soundHist,textHist)
    figure('name','Distribuição Estatística das fontes agrupadas EX5','NumberTitle','off');
    subplot(3,2,1);
    hBin = bar3(binHist,1);
    for i = 1:numel(hBin)
        index = logical(kron(binHist(:, i) == 0, ones(6, 1)));
        zData = get(hBin(i), 'ZData');
        zData(index, :) = nan;
        set(hBin(i), 'ZData', zData);
    end
    colorbar;
    title('MRIbin.bmp');
    subplot(3,2,2);
    hMRI = bar3(imgHist,1);
    for i = 1:numel(hMRI)
        index = logical(kron(hMRI(:, i) == 0, ones(6, 1)));
        zData = get(hMRI(i), 'ZData');
        zData(index, :) = nan;
        set(hMRI(i), 'ZData', zData);
    end
    colorbar;
    title('MRI.bmp');
    subplot(3,2,3);
    hLand = bar3(landHist,1);
    for i = 1:numel(hLand)
        index = logical(kron(landHist(:, i) == 0, ones(6, 1)));
        zData = get(hLand(i), 'ZData');
        zData(index, :) = nan;
        set(hLand(i), 'ZData', zData);
    end
    colorbar;
    title('landscape.bmp');
    subplot(3,2,4);
    bar(soundHist);
    title('soundMono.wav');
    subplot(3,2,5);
    hText = bar3(textHist,1);
    for i = 1:numel(hText)
        index = logical(kron(hText(:, i) == 0, ones(6, 1)));
        zData = get(hText(i), 'ZData');
        zData(index, :) = nan;
        set(hText(i), 'ZData', zData);
    end
    colorbar;
    title('lyrics.txt');
end