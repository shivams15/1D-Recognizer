A = importdata('Training/0_5.txt',',',0);
plot(A(1,1),A(1,2),'.b','MarkerSize',35);
hold on;
plot(A(:,1),A(:,2),'k','LineWidth',1.25);
daspect([1 1 1]);
xmin = min(A(:,1));
xmax = max(A(:,1));
ymin = min(A(:,2));
ymax = max(A(:,2));
r1 = range(A(:,1));
r2 = range(A(:,2));
d = abs(r1-r2)/2 + 0.02;
if r1 > r2
    xlim([xmin-0.02 xmax+0.02]);
    ylim([ymin-d ymax+d]);
else
    ylim([ymin-0.02 ymax+0.02]);
    xlim([xmin-d xmax+d]);
end
set(gcf,'color','w');
axis off;