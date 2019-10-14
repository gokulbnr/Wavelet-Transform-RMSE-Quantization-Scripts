function res=fft_jpg(img)
    qm=[1 1 1 1 1 1 1 1
       1 0 0 0 0 0 0 1
       1 0 0 0 0 0 0 1
       1 0 0 0 0 0 0 1
       1 0 0 0 0 0 0 1
       1 0 0 0 0 0 0 1
       1 0 0 0 0 0 0 1
       1 1 1 1 1 1 1 1];
    dft=@(block_struct) ifft2(qm.*(fft2(block_struct.data)));
    res=blockproc(double(img),[8 8],dft);
end