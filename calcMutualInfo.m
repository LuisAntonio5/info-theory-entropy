function [mutualMatrix] = calcMutualInfo(query,target,step)
querySize = size(query);
[histoQuery,alfaQuery] = createHistogram(query(:),0);
entropyQuery = calcEntropy(histoQuery,alfaQuery);
mutualMatrix = [];
for i=querySize(1):step:size(target,1)
    auxMutual = [];
    for k=querySize(2):step:size(target,2)
        janela = target(i-querySize(1)+1:i,k-querySize(2)+1:k);
        [histoJanela,alfaJanela] = createHistogram(janela(:),0);
        entropyJanela = calcEntropy(histoJanela,alfaJanela);
        entropyJoint = calcJointEntropy(query(:),janela(:));
        mutualInfo = entropyJanela + entropyQuery - entropyJoint;
        auxMutual = [auxMutual mutualInfo];
    end
    mutualMatrix = [mutualMatrix;auxMutual];
end       
%colGroups = mat2cell(alfa,2,ones(1,size(alfa,2)));
% newTarget = colfilt(target,[querySize(1) querySize(2)],'sliding',@(janela)mat2cell(janela, size(janela,1), ones(1,size(janela,2))));
% newTarget = newTarget(1:step:size(newTarget,1)-size(query,1)+1,1:step:size(newTarget,2)-size(query,2)+1);
% newTarget = newTarget(:);
% for i=1:length(newTarget)
%     a = cell2mat(newTarget(i))
%     [histW,alfaW] = createHistogram(a);
%     entropyW = calcEntropy(histW,alfaW);
%     entropyJoint = calcJointEntropy(a,query(:));
%     mutualInfo = entropyW+entropyQuery-entropyJoint
%     mutualMatrix = [mutualMatrix;mutualInfo]
% end
removeElemRow = rem(size(target,1),step);
removeElemCol = rem(size(target,2),step);
target = target(1:size(target,1)-removeElemRow,1:size(target,2)-removeElemCol);
colu = mat2cell(target,step*ones([1 size(target,1)/step]),step*ones([1 size(target,2)/step]));
disp(colu);
disp(mutualMatrix);
end