function[error] = RMSE(im1,im2)
%im1 = imread(im1);
%im2 = imread(im2);

error = sqrt(mean(mean((double(im1)-double(im2)).^2,2),1));