function [mutualMatrix, varMutualInfo] = calcMutualInfo(query,target,step)
querySize = size(query);
%% CALCULA ENTROPIA DA QUERY
[histoQuery,alfaQuery] = createHistogram(query(:),0);
entropyQuery = calcEntropy(histoQuery,alfaQuery);
mutualMatrix = [];
%% CALCULA ENTROPIA POR JANELA E ENTROPIA de (X,Y)
for i=querySize(1):step:size(target,1)
    auxMutual = [];
    for k=querySize(2):step:size(target,2)
        janela = target(i-querySize(1)+1:i,k-querySize(2)+1:k);
        [histoJanela,alfaJanela] = createHistogram(janela(:),0);
        entropyJanela = calcEntropy(histoJanela,alfaJanela);
        entropyJoint = calcJointEntropy(query(:),janela(:),8);
        mutualInfo = entropyJanela + entropyQuery - entropyJoint;
        auxMutual = [auxMutual mutualInfo];
    end
    mutualMatrix = [mutualMatrix;auxMutual];
end
disp(mutualMatrix);
varMutualInfo = var(mutualMatrix);
end