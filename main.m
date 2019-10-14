[y,fs] = audioread("C:\Users\Bernardo\Documents\MATLAB\saxriff.wav");
createHistogram(y(:,1),1);
calcEntropy(y(:,1));