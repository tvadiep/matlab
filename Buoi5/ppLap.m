function[SOL] = ppLap(A,C,dF)
[m,n]=size(A);
%vi m = n nen khong can sd m
B = -A./diag(A) + eye(n);

G = C./diag(A);
xk = G;
k =1;
while(1)
    xk = B*xk+G;
    k = k+1;
    if abs(A*xk-C)<dF
        break;
    end
end
SOL =xk;
end