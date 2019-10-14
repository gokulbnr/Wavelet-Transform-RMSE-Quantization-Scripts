clear;

im = imread('./Assign4_imgs/restore_01.jpg');
[M,N,no] = size(im);

F = fft2(double(im));

%u = 0:(M-1);
%v = 0:(N-1);
%idx = find(u > M/2);
%u(idx) = u(idx) - M;
%idy = find(v > N/2);
%v(idy) = v(idy) - N;
%[V,U] = meshgrid(v,u);
%D = sqrt(U.^2+V.^2);

T=1;
a=0.1;
b=0.1;
for u=1:M
    for v=1:N
        H(u,v) = (T/(pi*(u*a+v*b)))*sin(pi*(u*a+v*b))*exp(-i*pi*(u*a+v*b));
    end
end

G = F.*H;
new_im = real(ifft2(double(G)));

imshow(uint8(im));
figure;
imshow(uint8(new_im));