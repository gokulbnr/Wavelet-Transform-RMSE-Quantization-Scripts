function res=wavelet_jpg(img)
    [ll,lh,hl,hh]=dwt2(img,'haar');
    ll=ll.*(ll>70);
    lh=lh.*(lh>70);
    hl=hl.*(hl>70);
    hh=hh.*(hh>70);
    res=idwt2(ll,lh,hl,hh,'haar',size(img));
end