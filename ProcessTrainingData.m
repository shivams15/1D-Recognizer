function [C,M] = ProcessTrainingData()
% Importing and initial processing of training samples
for i = 1:14
    for j = 1:10
        name = sprintf('Training/%d_%d.txt',i-1,j);
        A = importdata(name,',',0);
        B = resample(A(:,1:2));
        B = rotate0(B);
        B = scale2square(B);
        X(64*(i-1)+1:64*i,j) = B(:,1);
        Y(64*(i-1)+1:64*i,j) = B(:,2);
    end
end
Xm = mean(X,2);
Ym = mean(Y,2);
for i = 1:14
    for j=1:64
        F = [X(64*(i-1)+j,:); Y(64*(i-1)+j,:)];
        F = F';
        C(2*(i-1)+1:2*i,2*(j-1)+1:2*j) = cov(F);
    end
end
M = [Xm,Ym];
save data.mat C M;
end

