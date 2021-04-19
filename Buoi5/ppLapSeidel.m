function[SOL] = ppLapSeidel(A,C,dF)
[m,n]=size(A);
%vi m = n nen khong can sd m
B = -A./diag(A) + eye(n);

G = C./diag(A);
x0 = G;
xn = x0;
k = 1;
while(1)
    for i = [1,n]
        xn(i) = B(1,:)*x0+G(1);
        xn(2) = B(2,1)*xn(1) + B(2,2)*x0(2) + B(2,3)*x0(3)+G(2);
        xn(3) = B(3,1)*xn(1) + B(3,2)*xn(2) + B(3,3)*x0(3)+G(3);
    end
    if abs(A*xn-C)<dF
        break;
    else
        x0 = xn;
        k = k+1;
    end
    disp(k);
end
SOL = xn;
end