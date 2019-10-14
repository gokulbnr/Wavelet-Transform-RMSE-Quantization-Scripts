clc;
clear all;
close all;

img=rgb2gray(imread('Uncompressed_03.bmp'));
img_dct=dct_jpg(im2double(img));
img_fft=fft_jpg(im2double(img));
img_wavelet=wavelet_jpg(img);

figure,
subplot(2,2,1);
imshow(img);
title('Input image');

subplot(2,2,2);
imshow(img_dct);
title('Using DCT');

subplot(2,2,3);
imshow(abs(img_fft));
title('Using FFT');

subplot(2,2,4);
imshow(uint8(img_wavelet));
title('Using Wavelet');

RMSE(img,img_dct)
RMSE(img,abs(img_fft))
RMSE(img,img_wavelet)