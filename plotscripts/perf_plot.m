comp = {'','IDSIA','IPAL','SUTECH','NEC','UTRECHT','WARWICK','NUS','ISIK',''};

Fscore = [0.7821, 0.7184, 0.7094, 0.6592, 0.5837, 0.5135, 0.4908, 0.3977];

scores = [0.7 0.8861
	0.74 .6971
	.72 .699
	.59 .7468
	.68 .5113
	.57 .4672
	.4 .6379
	.68 .281];

f1 = figure(1);
set(f1, 'Position', [50 50 1200 800])
hold on
barh(Fscore(end:-1:1))
set(gca,'YTickLabel',comp(end:-1:1))
xlim([0.3 0.9])

for k1 = 1:length(Fscore)
	text(0.02+Fscore(k1),9-k1,num2str(Fscore(k1)),'FontName','Courier New','FontSize',12,'FontWeight','bold')
end
xlabel('F_1-score','FontName','Courier New','FontSize',13,'FontWeight','bold')
title('ICPR Contest results','FontName','Courier New','FontSize',14,'FontWeight','bold','FontAngle','italic');
set(gca,'FontName','Courier New','FontSize',12,'FontWeight','bold')
hold off

print(f1,'-dpng','-r300','ICPRperf1.png')


tot_scores = horzcat(Fscore',scores);

f2 = figure(2);
set(f2, 'Position', [50 50 1200 800])
hold on
barh(tot_scores(end:-1:1,:))
set(gca,'YTickLabel',comp(end:-1:1))
xlim([0.2 1])

for k1 = 1:size(tot_scores,1)
	for k2=1:3
		text(0.01+tot_scores(k1,k2),9-k1-0.25+0.25*(k2-1),num2str(tot_scores(k1,k2)),'FontName','Courier New','FontSize',10,'FontWeight','bold')
	end
end
xlabel('Performance Measures','FontName','Courier New','FontSize',13,'FontWeight','bold')
title('ICPR Contest results','FontName','Courier New','FontSize',14,'FontWeight','bold','FontAngle','italic');
set(gca,'FontName','Courier New','FontSize',12,'FontWeight','bold')

l1 = legend('F-Score','Recall','Precision','Location','SouthEast');
set(l1,'FontName','Courier New','FontSize',12,'FontWeight','bold')

hold off

print(f2,'-dpng','-r300','ICPRperf2.png')