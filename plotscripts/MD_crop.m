files = dir('../images/MD_*.png');

for k1 =1:length(files)
	h1 = imread(strcat('../images/',files(k1).name));
	h1 = imcrop(h1);
	imwrite(h1,strcat('../images/','cr_',files(k1).name));
end