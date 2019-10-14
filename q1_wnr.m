clear;

im = im2double(imread('./Assign4_imgs/restore_01.jpg'));

noise_var = 0.001;
noise = noise_var/var(im(:));
len = 32;
theta = 0;
new_im = deconvwnr(im, fspecial('motion', len, theta), noise);

figure,imshow(im,[]);
figure,imshow(new_im,[]);