function dct = create_mat_dct(N)
    r1=sqrt(1/N);
    r2=sqrt(2/N);
    dct=(0);
    dct=repmat(dct,8,8);
    for i=1:8
        for j=1:8
            if i==1
                dct(i,j) = r1;
            else
                dct(i,j)=r2*cos((pi*(2*j-1)*(i-1))/(2*N));
            end
        end
    end
end