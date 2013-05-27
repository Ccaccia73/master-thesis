load 'class_MSi_norm_extA.mat' 

f1 = figure(1);
set(f1, 'Position', [50 50 860 800])
hold on

plot(1- RF.spec, RF.sens,'LineWidth',2,'Color',[0.1 0.1 1])
plot(1- RF.spec(RF.hull), RF.sens(RF.hull),'Color',[0 0.5 0.1],'LineWidth',1.5)
h1 = line([0 1],[0 1]);
set(h1,'LineStyle','-.');
set(h1,'LineWidth',1.5);
set(h1,'Color',[0.7 0.1 0.1])
l1 = legend('ROC curve','convex hull','Location','SouthEast');
set(l1,'FontName','Courier New','FontSize',12,'FontWeight','bold')
axis([0 1 0 1])
xlabel('1-specificity','FontName','Courier New','FontSize',13,'FontWeight','bold')
ylabel('sensitivity','FontName','Courier New','FontSize',13,'FontWeight','bold')
title('ROC curve','FontName','Courier New','FontSize',14,'FontWeight','bold','FontAngle','italic');
set(gca,'YTick',0:.2:1)
set(gca,'XTick',0:.2:1)
set(gca,'FontName','Courier New','FontSize',12,'FontWeight','bold')
grid
axis equal
axis square
hold off

print(f1,'-dpng','-r300','ROC1.png')
% print(f1,'-depsc2','-r300','ROC1')


f2 = figure(2);
set(f2, 'Position', [50 50 860 800])
hold on

h3 = area(1- RF.spec(RF.hull), RF.sens(RF.hull),'FaceColor',[0.3 0.8 0.3],'LineWidth',2);
area(1- RF.spec, RF.sens,'FaceColor',[0.6 0.6 1],'LineWidth',1.4)
% h1 = line([0 1],[0 1]);
% set(h1,'LineStyle','-.');
% set(h1,'LineWidth',1.5);
% set(h1,'Color',[0.4 0.4 0.4])
% get(h1)
% 
% 
l1 = legend('AUCH ROC','AUC','Location','SouthEast');
set(l1,'FontName','Courier New','FontSize',12,'FontWeight','bold');
axis([0 1 0 1])
title('ROC Area','FontName','Courier New','FontSize',14,'FontWeight','bold','FontAngle','italic')
xlabel('1-specificity','FontName','Courier New','FontSize',13,'FontWeight','bold')
ylabel('sensitivity','FontName','Courier New','FontSize',13,'FontWeight','bold')
set(gca,'YTick',0:.2:1)
set(gca,'XTick',0:.2:1)
set(gca,'FontName','Courier New','FontSize',12,'FontWeight','bold')

grid
axis equal
axis square
hold off

print(f2,'-dpng','-r300','ROC2.png')
% print(f2,'-depsc2','-r300','ROC2')


