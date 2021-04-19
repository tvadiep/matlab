format long;
A = [[5,1,1];[1,10,1];[1,1,20]];
C = [7;12;22];
dF =10^(-3);
xk = ppLap(A,C,dF);
disp(xk);