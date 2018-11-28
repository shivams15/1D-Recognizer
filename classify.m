%function that assigns a class to the candidate gesture
function [w] = classify(pnt)
D = +Inf;
w = 15;
for i = 1:14
    d = MDmin(pnt,i,-7*pi/180,7*pi/180,pi/180);
    if d < D
        w = i;
        D = d;
    end
end
end

