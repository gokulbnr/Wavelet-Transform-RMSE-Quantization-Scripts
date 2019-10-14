function rmse = RMSE(im1,im2)
    im=double(im1)-double(im2);
    im=im(:);
    im=im.*im;
    im=mean(im);
    rmse=sqrt(im);
end