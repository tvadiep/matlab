format long;
disp('Ket qua bai tap 1 la: ');
A = [[5,1,1];[1,10,1];[1,1,20]];
C = [7;12;22];
dF =10^(-3);
xk = ppLap(A,C,dF);
disp(xk);

disp('Ket qua bai tap 2 la: ');
xk = ppLapSeidel(A,C,dF);
disp(xk);

%Bai 4 cau c
A = [[6,1,1,1,1];[2,9,3,1,2];[2,1,10,4,2];[1,2,1,8,3];[2,1,2,3,9]];
C = [9;1;-12;-12;5];
dF = 10^(-3);
disp('Ket qua cau c bai 4 thep pp lap la: ');
xk = ppLap(A,C,dF);
disp(xk);

disp('Ket qua cau c bai 4 thep pp lap Seidel la: ');
xk = ppLapSeidel(A,C,dF);
disp(xk);
