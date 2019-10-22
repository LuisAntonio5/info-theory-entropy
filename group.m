function [entropy,numeroMedioBits] = group(signal,alfa)
[a,b] = ndgrid(alfa);
newAlfaAux = [a(:),b(:)];
newAlfaAux = transpose(newAlfaAux);
alfa = [];
newSignal = reshape(signal,2,[]);
histoGroup = [];
% for i=1:length(newAlfaAux)
%     aux = newSignal(1,:) == newAlfaAux(1,i);
%     aux2 = newSignal(2,:) == newAlfaAux(2,i);
%     aux = [aux;aux2];
%     result = sum(aux(:,:),1);
%     n = length(find(result == 2));
%     if n>0
%         alfa = [alfa newAlfaAux(:,i)];
%         histoGroup = [histoGroup,n];
%     end
% end
alfa = unique(newSignal',"row")';
colGroups = mat2cell(alfa,2,ones(1,size(alfa,2)));
funcNumOfOccu = @(col)nnz(sum(bsxfun(@eq,newSignal,col),1)>=2);
histoGroup = cellfun(funcNumOfOccu,colGroups);
   
%     result = sum(a(:,:),1);
%     n = length(find(result == 2));
%     if n>0
%         histoGroup = [histoGroup,n];
%     end
% end
% % % alfa = unique(newSignal',"row")';
entropy = calcEntropy(histoGroup,alfa);
numeroMedioBits = entropy/2;
disp("outro");
disp(entropy);

end

% for i=1:length(newAlfaAux)
%     count = 0;
%     for k=1:length(newSignal)
%         if(newAlfaAux(:,i) == newSignal(:,k))
%             count = count + 1;
%         end
%     end
%     if(count ~= 0)
%         alfa = [alfa newAlfaAux(:,i)];
%         histoGroup = [histoGroup,count];
%     end
% end
