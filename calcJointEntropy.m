function [jointEntropy] = calcJointEntropy(signalX,signalY,nBits)
newMatrix = [signalX(:),signalY(:)]';
signalX = uint16(signalX);
signalY = uint16(signalY);
grouped = signalX(:) * 2^nBits + signalY(:);
[histoJoint,alfa] = createHistogram(grouped,0);
jointEntropy = calcEntropy(histoJoint,alfa);
end