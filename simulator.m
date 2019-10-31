function [] = simulator(query,step)
file = "target";
for i=1:4
    fileName = file+i+".bmp";
    targetImg = imread(fileName);
    [mutualInfo,var] = calcMutualInfo(query,targetImg,step);
    figure(5);
    subplot(2,2,i);
    drawRec(targetImg,mutualInfo,15,size(query));
end
