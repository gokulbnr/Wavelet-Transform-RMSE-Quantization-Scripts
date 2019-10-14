clear;
im = rgb2gray(imread('./Assign4_imgs/Uncompressed_03.bmp'));

[LL,LH,HL,HH] = dwt2(im,'haar');

%[M N] = size(LL);
threshold = 70;

LL = LL.*(LL > threshold);
LH = LH.*(LH > threshold);
HL = HL.*(HL > threshold);
HH = HH.*(HH > threshold);
%{
for i=1:M
    for j=1:N
        if(LL(i,j) < threshold)
            LL(i,j) = 0;
        end
        if(LH(i,j) < threshold)
            LH(i,j) = 0;
        end
        if(HL(i,j) < threshold)
            HL(i,j) = 0;
        end
        if(HH(i,j) < threshold)
            HH(i,j) = 0;
        end
    end
end
%}
new_im = idwt2(LL,LH,HL,HH,'haar',size(im));

figure,imshow(im);
figure,imshow(new_im,[]);
%c = 1;
%im_dct = myDCT_quantization(myDCT(im,create_mat_dct(8)),0,c);
%im_new_dct = myIDCT(myDCT_dequantization(im_dct,0,c),create_mat_dct(8));
%RMSE_dct = RMSE(im,im_new_dct);

%Q = zeros(8,8);
%Q(1:8,1) = ones(1,8);
%Q(1,1:8) = ones(1,8); 
%Q(8,1:8) = ones(1,8); 
%Q(8,1:8) = ones(1,8); %Quantization matrix for dft

%dft = @(block_struct) ifft2(Q.*(fft2(block_struct.data)));
%mask = @(block_struct) Q.*block_struct.data;
%idft = @(block_struct) F' * block_struct.data * F;

%im_dft = blockproc(double(im), [8 8], dft);
%RMSE_dft = RMSE(im,abs(im_dft));

%figure;
%subplot(1,3,1);imshow(uint8(im));title('Original');
%subplot(1,3,2);imshow(uint8(im_new_dct));title('DCT');
%subplot(1,3,3);imshow(uint8(abs(im_dft)));title('DFT');
%set(gcf, 'units','normalized','outerposition',[0 0 1 1]);

%X = sprintf('RMSE error in DCT: %d',RMSE_dct);
%disp(X);
%Y = sprintf('RMSE error in DFT: %d',RMSE_dft);
%disp(Y);
