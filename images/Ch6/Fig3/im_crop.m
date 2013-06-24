
files = dir('*.png');

for k1=1:length(files)
	h1 = figure(k1);
	im = imread(files(k1).name);
	im1 = imcrop(im);

	imwrite(im1,strcat(strtok(files(k1).name,'.'),'_crop.png'));
	close(h1)
end

close all