function [outputData,labels] = resetData(inputData,inputT,inputY,inputC)
[dcols,drows] = size(inputData);
[tcols] = size(inputT,1);
outputData = [];
labels = [];
inputT = [inputT;drows];
minpoints = min(inputT(2:end)-inputT(1:end-1));
for i=1:dcols
    for j=1:tcols
        outputData = [outputData ; inputData(i,inputT(j):(inputT(j)+minpoints-1))];
        labels = [labels;inputY(i,j)];
    end
end