clc;
clear all;
close all;

img1=imread('restore_01.jpg');
len=35;
ang=0;
nsr=.0275;
psf=fspecial('motion',len,ang);
res1=deconvwnr(img1,psf,nsr);
figure,
subplot(1,2,1);
imshow(img1);
title('Input');
subplot(1,2,2);
imshow(res1);
title('Output');

img2=imread('restore_02.jpg');
a=[855 800];
b=[705 720];
c=a-b;
len=20;
ang=0;
nsr=.05;
psf=fspecial('motion',len,ang);
res2 = deconvwnr(img2,psf,nsr);
figure,
subplot(1,2,1);
imshow(img2);
title('Input');
subplot(1,2,2);
imshow(res2);
title('Output');

[img3,map]=imread('restore_03.gif');
img3=ind2rgb(img3,map);
a=[200 45];
b=[215 35];
len=20;
ang=35;
nsr=.02;
psf=fspecial('motion',len,ang);
res3=deconvwnr(img3,psf,nsr);
figure,
subplot(1,2,1);
imshow(img3);
title('Input');
subplot(1,2,2);
imshow(res3);
title('Output');

img4=imread('restore_04.jpg');
a=[290 315]; 
b=[315 325];
len=30;
ang=-30;
nsr=.028;
psf=fspecial('motion',len,ang);
res4=deconvwnr(img4,psf,nsr);
figure,
subplot(1,2,1);
imshow(img4);
title('Input');
subplot(1,2,2);
imshow(res4);
title('Output');