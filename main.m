% clear all;
% clc;
%% RECOLHA DE DADOS
%Primeiros exercicios
[saxSound,fs] = audioread("soundMono.wav");
nBitsSom = audioinfo("soundMono.wav").BitsPerSample;
TextL = fileread("lyrics.txt");
ImgBin = imread("MRIbin.bmp");
ImgMRI = imread("MRI.bmp");
ImgLand = imread("landscape.bmp");
ImgQuery = imread("query.bmp");
%Exercicio 6
ImgTargetOri = imread("target_original.bmp");
ImgTargetNoise = imread("target_noise.bmp");
ImgTargetInverted = imread("target_inverted.bmp");
ImgTargetContrast = imread("target_lightning_contrast.bmp");
%Recolhe todos os dados
[hSound,aSound,entropySound,eHuffmanSound,groupEntropySound,numBitMedSound,histoGSound] = rSound(saxSound,nBitsSom);
[hImgBin,aImgBin,entropyImgBin,eHuffmanImgBin,groupEntropyImgBin,numBitMedImgBin,histoGroupImgBin] = rImg(ImgBin);
[hImg,aImg,entropyImg,eHuffmanImg,groupEntropyImg,numBitMedImg,histoGroupImg] = rImg(ImgMRI);
[hLand,aLand,entropyImgLand,eHuffmanImgLand,groupEntropyImgLand,numBitImgLand,histoGroupImgLand] = rImg(ImgLand);
[hText,aText,entropyText,eHuffmanText,groupEntropyText,numBitMedText,histoGroupText] = rText(TextL);
disp(groupEntropySound);
disp(groupEntropyImgBin);
disp(groupEntropyImg);
disp(groupEntropyImgLand);
disp(groupEntropyText);
% calcMutualInfo([2 6;4 9],[6 8 9 7;2 4 9 9;4 9 1 4],1);
%% FAZ PLOTS DO EX3
% createHistoEx3(hImgBin,aImgBin,hImg,0:1:255,hLand,0:1:255,hText,[65:1:90,97:122],hSound,-1:1/750:1);
%% FAC PLOTS DO EX5
%passar histograma dos grupos para a rotina createHistEx5
createHistoEx5(histoGSound,histoGroupImgBin,histoGroupImg,histoGroupImgLand,histoGroupText)
%ajustar para todos
%% INFORMACAO MUTUA EX6 B)
% [mutualInfoOri,varOri] = calcMutualInfo(ImgQuery,ImgTargetOri,15);
% [mutualInfoNoise,varNoise] = calcMutualInfo(ImgQuery,ImgTargetNoise,15);
[mutualInfoInverted,varInverted] = calcMutualInfo(ImgQuery,ImgTargetInverted,15);
% [mutualInfoContrast,varContrast] = calcMutualInfo(ImgQuery,ImgTargetContrast,15);

drawRec(ImgTargetInverted,mutualInfoInverted,15,size(ImgQuery));