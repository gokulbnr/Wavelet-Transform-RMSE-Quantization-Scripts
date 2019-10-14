function[dct_im] = myDCT(im,F)
%img = 'LAKE.TIF';
%im = imread(img);
im = double(im);
%im = im2double(im);
%F = dctmtx(8);
im = im - 128;
%im
dct = @(block_struct) F * block_struct.data * F';
dct_im = blockproc(im, [8 8], dct);
%dct_im = uint8(dct_im);

%imshow(dct_im);