% clear all;
% clc;

[saxSound,fs] = audioread("saxriff.wav");
TextL = fileread("lyrics.txt");
ImgBin = imread("homerBin.bmp");
ImgMRI = imread("MRI.bmp");
ImgLand = imread("landscape.bmp");
ImgQuery = imread("query.bmp");
ImgTarget1 = imread("target1.bmp");
% [hImgBin,aImgBin,entropyImgBin,eHuffmanImgBin] = rImg(ImgBin);
% [hSound,aSound,entropySound,eHuffmanSound] = rSound(saxSound);
% [hImg,aImg,entropyImg,eHuffmanImg] = rImg(ImgMRI);
% [hLand,aLand,entropyImgLand,eHuffmanImgLand] = rImg(ImgLand);
% [hText,aText,entropyText,eHuffmanText] = rText(TextL);
%calcMutualInfo([2 6;4 9],[6 8 9 7;2 4 9 9;4 9 1 4],1);
% createHistoEx3(hImgBin,aImgBin,hImg,aImg,hLand,aLand,hText,aText,hSound,aSound);
%createHistogram(img1,1);
calcMutualInfo(ImgQuery,ImgTarget1,15);
