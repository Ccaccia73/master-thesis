load ./01_Thesis/TrainDataSet.mat

im = trainDataSet(2).data;

img = rgb2gray(im);

imcgs = imresize(img(26:75,26:75),[5 5]);


f1 = figure(1);
set(f1, 'Position', [50 50 1500 840])
% hold on
% 
subplot(2,2,1)
subimage(im)
hl = xlabel('Image');
set(hl,'FontName','Courier New','FontSize',15,'FontWeight','bold')
set(gca,'XTickLabel',[])
set(gca,'YTickLabel',[])

subplot(2,2,2)
subimage(img)
hl = xlabel('Grayscale');
set(hl,'FontName','Courier New','FontSize',15,'FontWeight','bold')
set(gca,'XTickLabel',[])
set(gca,'YTickLabel',[])


subplot(2,2,3)
subimage(img)

hold on
[xa1 ya1] = ds2nfu([36.3 64.8 36.7 64.8]',[26.7 26.7 77 77]);

for k1=0:5
	line([25 25]+k1*10,[25 75],'Color','y')
end

for k1=0:5
	line([25 75],[25 25]+k1*10,'Color','y')
end


hold off

hl = xlabel('Central part');
set(hl,'FontName','Courier New','FontSize',15,'FontWeight','bold')

subplot(2,2,4)
hsi4 = subimage(imcgs);
%uistack(gca,'top')
hold on
[xa2 ya2] = ds2nfu([1.6 4.45 1.6 4.45]',[0.48 0.48 5.49 5.49]');
set(gca,'XTick',1:5)
set(gca,'YTick',1:5)
set(hl,'FontName','Courier New','FontSize',15,'FontWeight','bold')
hl = xlabel('Mean Intensities');
set(hl,'FontName','Courier New','FontSize',15,'FontWeight','bold')



for k=1:numel(xa1)
    ha(k) = annotation('line',[xa1(k) xa2(k)],[ya1(k) ya2(k)],'color','b','LineWidth',2,'EraseMode','BackGround');
end

%uistack(gca,'bottom')


hold off

print(f1,'-dpng','-r300','GSintens.png')


