function [] = displayCats(ImgQuery,target1,mutual1,target2,mutual2,target3,mutual3,target4,mutual4,step)
figure('name','Imagens EX6 b)','NumberTitle','off');
subplot(2,2,1);
drawRec(target1,mutual1,step,size(ImgQuery));
title('Img1.bmp');
subplot(2,2,2);
drawRec(target2,mutual2,step,size(ImgQuery));
title('Img2.bmp');
subplot(2,2,3);
drawRec(target3,mutual3,step,size(ImgQuery));
title('Img3.bmp');
subplot(2,2,4);
drawRec(target4,mutual4,step,size(ImgQuery));
title('Img4.bmp');