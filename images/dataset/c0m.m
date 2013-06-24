im = imread('C0_med.png');

thick = 2;

dims = size(im);

for k1=1:7
	im(:,101*k1+thick*(k1-1)+1:101*k1+thick*(k1-1)+thick,:) = 255*ones(dims(1),thick,3);
end

for k1=1:5
	im(101*k1+thick*(k1-1)+1:101*k1+thick*(k1-1)+thick,:,:) = 255*ones(thick,dims(2),3);
end

im(end-100:end,end-(101*5+8)+1:end,:) = 255*ones(101,101*5+8,3);

imshow(im)

imwrite(im,'C0_med1.png');
