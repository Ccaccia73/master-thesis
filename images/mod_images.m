% script for modifying images

%% Ch 3 ROC 

im1 = imread('ROC1.png');
im2 = imread('ROC2.png');

dims = size(im1);

dx = 301;
dy = 15;

im1c = imcrop(im1,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
im2c = imcrop(im2,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
imshow(im1c)
imshow(im2c)

imwrite(im1c,'ROC1mod.png');
imwrite(im2c,'ROC2mod.png');

%% Ch4 rot


im1 = imread('rotDataset_mod.jpg');

dims = size(im1);

% dx = 301;
% dy = 15;
% 
% im1c = imcrop(im1,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
% im2c = imcrop(im2,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
figure(1)
imshow(im1)
im1c = imcrop(im1);
imwrite(im1c,'rotDataset_mod1.png');
% imwrite(im2c,'ROC2mod.png');

%% Ch4 hist


im1 = imread('histIM_mod.jpg');

% dims = size(im1);

% dx = 301;
% dy = 15;
% 
% im1c = imcrop(im1,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
% im2c = imcrop(im2,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
figure(1)
imshow(im1)
im1c = imcrop(im1);
imwrite(im1c,'histIM_mod1.png');
% imwrite(im2c,'ROC2mod.png');

%% Ch4 intens


im1 = imread('GSintens1_mod.jpg');

% dims = size(im1);

% dx = 301;
% dy = 15;
% 
% im1c = imcrop(im1,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
% im2c = imcrop(im2,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
figure(1)
imshow(im1)
im1c = imcrop(im1);
imwrite(im1c,'GSintens1_mod1.png');
% imwrite(im2c,'ROC2mod.png');

%% Ch4 intens


im1 = imread('GS_VAR_mod.jpg');

% dims = size(im1);

% dx = 301;
% dy = 15;
% 
% im1c = imcrop(im1,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
% im2c = imcrop(im2,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
figure(1)
imshow(im1)
im1c = imcrop(im1);
imwrite(im1c,'GS_VAR_mod1.png');
% imwrite(im2c,'ROC2mod.png');


%% Ch4 intens


im1 = imread('SVM_example_mod.jpg');

% dims = size(im1);

% dx = 301;
% dy = 15;
% 
% im1c = imcrop(im1,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
% im2c = imcrop(im2,[dx dy dims(2)-dx*2 dims(1)-2*dy]);
figure(1)
imshow(im1)
im1c = imcrop(im1);
imwrite(im1c,'SVM_example_mod1.png');
% imwrite(im2c,'ROC2mod.png');