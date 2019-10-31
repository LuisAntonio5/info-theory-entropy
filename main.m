clear all;
clc;
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
% disp(groupEntropySound);
disp(groupEntropyImgBin);
disp(groupEntropyImg);
disp(groupEntropyImgLand);
disp(groupEntropyText);
%% FAZ PLOTS DO EX3
createHistoEx3(hImgBin,aImgBin,hImg,[0:1:255],hLand,[0:1:255],hText,[65:1:90,97:122],hSound,[-1:1/75000:1]);
%% FAC PLOTS DO EX5
createHistoEx5(histoGroupImgBin,histoGroupImg,histoGroupImgLand,histoGSound,histoGroupText);
%% INFORMACAO MUTUA EX6 B)
[mutualInfoOri,varOri] = calcMutualInfo(ImgQuery,ImgTargetOri,15);
[mutualInfoNoise,varNoise] = calcMutualInfo(ImgQuery,ImgTargetNoise,15);
[mutualInfoInverted,varInverted] = calcMutualInfo(ImgQuery,ImgTargetInverted,15);
[mutualInfoContrast,varContrast] = calcMutualInfo(ImgQuery,ImgTargetContrast,15);
displayCats(ImgQuery,ImgTargetOri,mutualInfoOri,ImgTargetNoise,mutualInfoNoise,ImgTargetInverted,mutualInfoInverted,ImgTargetContrast,mutualInfoContrast,15);
%% EXERCICO 6C)
simulator(ImgQuery,15);