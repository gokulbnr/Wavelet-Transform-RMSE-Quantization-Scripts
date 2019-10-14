function res=dct_jpg(img)
    f=create_mat_dct(8);
    dct=@(block_struct) f*block_struct.data*f';
    b=blockproc(img,[8 8],dct);
    mask=[1   1   1   1   0   0   0   0
          1   1   1   0   0   0   0   0
          1   1   0   0   0   0   0   0
          1   0   0   0   0   0   0   0
          0   0   0   0   0   0   0   0
          0   0   0   0   0   0   0   0
          0   0   0   0   0   0   0   0
          0   0   0   0   0   0   0   0];
    b2=blockproc(b,[8 8],@(block_struct) mask.*block_struct.data);
    invdct=@(block_struct) f'*block_struct.data*f;
    res=blockproc(b2,[8 8],invdct);
end