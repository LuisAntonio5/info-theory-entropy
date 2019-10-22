function [jointEntropy] = calcJointEntropy(signalX,signalY)
newMatrix = [signalX(:),signalY(:)]';
alfa = unique(newMatrix',"rows")';
groups = mat2cell(alfa,2,ones(1,size(alfa,2)));
funcGroups = @(col)nnz(sum(bsxfun(@eq,newMatrix,col),1)>=2);
histoJoint = cellfun(funcGroups,groups);
jointEntropy = calcEntropy(histoJoint,alfa);
end