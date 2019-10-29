function [entropy,numeroMedioBits,histoGroup,alfaGroup] = group(signal,nBits,isSound)
signal = signal(:);
histoGroup = [];
if(rem(size(signal,1),2) ~= 0)
    signal = signal(1:size(signal,1)-1,:);
end
if(nBits==8)
    if(isSound)
        signal = signal*2^16;
    else
        signal = uint16(signal(:));
    end
elseif(nBits==16)
    signal = signal*2^16;
    
end
        

grouped = signal(1:2:end) * 2^nBits + signal(2:2:end);
[histoGroup,alfaGroup] = createHistogram(grouped,0);
entropy = calcEntropy(histoGroup);
numeroMedioBits = entropy/2;

end
