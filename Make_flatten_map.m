%% Make flatten plot maps
clear all
Fig = figure;
background = 'black';
ax = axes;
hold on
ax.ColorOrder = ColorOrder;
data=load('datafile.mat');%load datafile
for j = 1:size(data,1)
    plot(data.Xcoordinate(j),data.Ycoordinate(j),'.','MarkerSize',2);
    hold on
end
title(SS,'Color','w')
hold off
colormap(Color2)
colorbar;
set(gcf,'Color','none');
set(gca,'Color','none');
set(gcf,'InvertHardcopy','off');
set(gcf,'PaperUnits','inches','PaperPosition',[0 0 24 16])
