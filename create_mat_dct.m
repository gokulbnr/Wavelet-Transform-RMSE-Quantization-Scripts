function[dct_mat] = create_mat_dct(N)
r0 = sqrt(1/N);
r1 = sqrt(2/N);

dct_mat = zeros(N,N);

for v=0:N-1
    for u=0:N-1
        if v == 0
            dct_mat(v+1,u+1) = r0*cos((pi*(2*u+1)*v)/(2*N));
        else
            dct_mat(v+1,u+1) = r1*cos((pi*(2*u+1)*v)/(2*N));
        end
    end
end

%dct_ans = dctmtx(N);