% function that calculates the average Mahalanobis distance between a
% given template and a gesture rotated by a given angle
function [d] = MD(pnt, i, phi)
load data.mat C M;
pnt = rotate(pnt,phi);
d = 0;
for j = 1:64
    d = d + sqrt((pnt(j,:)- M(64*(i-1)+j,:))*inv(C(2*(i-1)+1:2*i,2*(j-1)+1:2*j))*(pnt(j,:)- M(64*(i-1)+j,:))')/64;
end
end