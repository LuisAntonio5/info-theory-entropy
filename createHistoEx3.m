function[] = createHistoEx3(hImgBin,aImgBin,hImg,aImg,hLand,aLand,hText,aText,hSound,aSound)
    figure('name','Distribuição Estatística das fontes dadas','NumberTitle','off');
    subplot(3,2,1);
    bar(hImgBin);
    set(gca,"XTick",1:255:length(aImgBin),"XtickLabels",aImgBin(:));
    title('MRIbin.bmp');
    xlim([-4 260]);
    subplot(3,2,2);
    bar(hImg);
    set(gca,"XTick",1:51:length(aImg),"XtickLabels",aImg([1:51:end]));
    title('MRI.bmp');
    subplot(3,2,3);
    bar(hLand);
    set(gca,"XTick",1:51:length(aLand),"XtickLabels",aLand([1:51:end]));
    title('landscape.bmp');
    subplot(3,2,4);
    bar(hSound);
    set(gca,"XTick",1:2629:length(aSound),"XtickLabels",aSound([1:2629:end]));
    title('guitarSolo.wav');
    subplot(3,2,5);
    bar(hText);
    set(gca,"XTick",1:7:length(aText),"XtickLabels",num2cell(char(aText(1:7:end))));
    title('lyrics.txt');
end

