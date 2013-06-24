
files = dir('*.png');

for k1=1:length(files)
	% figure(k1)
	im = imread(files(k1).name);
	im1 = imcrop(im);

	imwrite(im1,strcat(strtok(files(k1).name,'.'),'_crop.png'));
end

close all