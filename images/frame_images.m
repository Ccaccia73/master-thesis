% script for modifying images

%% Ch 5 cr

files = dir('cr_*.png');

thick = 2;

for k1=1:length(files)
	% figure(k1)
	im = imread(files(k1).name);
	dims=size(im);
	im(1:end,1:thick,:) = zeros([dims(1) thick dims(3)]);
	im(1:end,end-thick+1:end,:) = zeros([dims(1) thick dims(3)]);
	im(end-thick+1:end,1:end,:) = zeros([thick dims(2) dims(3)]);
	imwrite(im,strcat(strtok(files(k1).name,'.'),'_mod.png'));
end
