function RocPlot3(sens, spec, hull,accM, accMind, name, tit,figname) 

f1 = figure(); %'visible','off');
set(f1, 'Position', [50 50 1100 1000])
hold on

plot(1- spec{1}, sens{1},'LineWidth',1.5,'Color',[112 128 144]/255)
plot(1- spec{2}, sens{2},'LineWidth',1.5,'Color',[16 78 139]/255)
plot(1- spec{3}, sens{3},'LineWidth',1.5,'Color',[69 139 116]/255)
plot(1- spec{4}, sens{4},'LineWidth',1.5,'Color',[139;62;47]/255)

plot(1 - spec{1}(accMind{1}), sens{1}(accMind{1}),'ko','MarkerSize',8,'MarkerFaceColor',[47 79 79]/255)
plot(1 - spec{2}(accMind{2}), sens{2}(accMind{2}),'ko','MarkerSize',8,'MarkerFaceColor',[0 178 238]/255)
plot(1 - spec{3}(accMind{3}), sens{3}(accMind{3}),'ko','MarkerSize',8,'MarkerFaceColor',[102 205 170]/255)
plot(1 - spec{4}(accMind{4}), sens{4}(accMind{4}),'ko','MarkerSize',8,'MarkerFaceColor',[238;106;80]/255)

plot(1- spec{1}(hull{1}), sens{1}(hull{1}),'Color',[159 182 205]/255,'LineWidth',1)
plot(1- spec{2}(hull{2}), sens{2}(hull{2}),'Color',[30 144 255]/255,'LineWidth',1)
plot(1- spec{3}(hull{3}), sens{3}(hull{3}),'Color',[112 219 147]/255,'LineWidth',1)
plot(1- spec{4}(hull{4}), sens{4}(hull{4}),'Color',[205;91;69]/255,'LineWidth',1)

h1 = line([0 1],[0 1]);
set(h1,'LineStyle','-.');
set(h1,'LineWidth',1);
set(h1,'Color',[0.7 0.7 0.7])
l1 = legend(name{1},name{2},name{3},name{4},...
	[name{1},' Max Accuracy = ',num2str(accM{1})],...
	[name{2},' Max Accuracy = ',num2str(accM{2})],...
	[name{3},' Max Accuracy = ',num2str(accM{3})],...
	[name{4},' Max Accuracy = ',num2str(accM{4})],...
	'Location','SouthEast');
set(l1,'FontName','Courier New','FontSize',8.4,'FontWeight','bold')
axis([-0.002 1 0 1.002])
xlabel('1-specificity','FontName','Courier New','FontSize',9,'FontWeight','bold')
ylabel('sensitivity','FontName','Courier New','FontSize',9,'FontWeight','bold')
title(tit,'FontName','Courier New','FontSize',11,'FontWeight','bold','FontAngle','italic');
set(gca,'YTick',0:.2:1)
set(gca,'XTick',0:.2:1)
set(gca,'FontName','Courier New','FontSize',9,'FontWeight','bold')
grid
axis equal
axis square
hold off

print(f1,'-dpng','-r300',strcat(figname,'.png'))
saveas(f1,figname,'fig')

close(f1)
% print(f1,'-depsc2','-r300','ROC1')
