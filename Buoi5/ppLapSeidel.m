function[SOL] = ppLapSeidel(A,C,dF)
[m,n]=size(A);
%vi m = n nen khong can sd m
B = -A./diag(A) + eye(n);

G = C./diag(A);
x0 = G;
xn = x0;
k = 1;
while(1)
    xn(1) = B(1,:)*x0+G(1);
    for i = 2:n
        bt1 = 0;
        for j = 1:(i-1)
            bt1 = bt1 + B(i,j)*xn(j);
        end
        bt2 = 0;
        for j = i:n
            bt2 = bt2 + B(i,j)*x0(j)+G(i);
        end
        xn(i) = bt1 + bt2;
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