clear;

im = im2double(imread('./Assign4_imgs/restore_02.jpg'));

noise_var = 0.0001;
noise = noise_var/var(im(:));
len = 5;
theta = 10;
new_im = deconvwnr(im, fspecial('motion', len, theta), noise);

figure,imshow(im,[]);
figure,imshow(new_im,[]);