function[idct_im] = myIDCT(im,F)
%im = imread(img);
inv_dct = @(block_struct) F' * block_struct.data * F;
idct_im = blockproc(double(im),[8 8],inv_dct);
idct_im = round(idct_im);
%idct_im = double(idct_im);
%idct_im
idct_im = idct_im + 128;

%figure;
%subplot(1,2,1);imshow('LAKE.TIF');
%subplot(1,2,2);imshow(uint8(idct_im));
