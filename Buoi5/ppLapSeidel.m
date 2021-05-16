function[SOL] = ppLapSeidel(A,C,dF) % A la ma tran he so ve trai cua cac phuong trinh, C la ve phai cua cac PT, df la do sai so cho phep)
[m,n]=size(A);
B = -A./diag(A) + eye(n);

G = C./diag(A);
x0 = G;
xn = x0;
k = 1;

while(1)
    xn(1) =0;
    for j = 1:n
        xn(1) = xn(1) + B(1,j) * x0(j);
    end
    xn(1) = xn(1) + G(1);
    for i = 2:n
        bt1 = 0;
        for j = 1:(i-1)
            bt1 = bt1 + B(i,j)*xn(j);
        end
        bt2 = 0;
        for j = i:n
            bt2 = bt2 + B(i,j)*x0(j);
        end
        xn(i) = bt1 + bt2 + G(i);
    end
    if abs(A*xn-C)<dF
        break;
    else
        x0 = xn;
        k = k+1;
    end
end
SOL = xn;
end
