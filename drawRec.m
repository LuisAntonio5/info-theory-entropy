function [val] = drawRec(target,mutMatrix,step,sizeQuery)
val = max(mutMatrix(:));
[coordRow,coordCol] = find(mutMatrix == val);
coordRow = coordRow(1);
coordCol = coordCol(1);
imshow(target,[]);
rectangle("Position", [(coordCol-1)*step,(coordRow-1)*step,sizeQuery(2),sizeQuery(1)], 'LineWidth', 2,'LineStyle', '--', 'EdgeColor', 'r');

end