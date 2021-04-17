% File nay la file main de chay cac cau: a, b, c, d cua cau 12

% Doan nay de goi ham cau a
disp('Ket qua demo cau a la: ');
syms x1 x2;
F = x1-x2;
A = [2 0.1 3 0.2];
saiSoHam2Bien(F,A);

% Doan nay de goi ham cau b
disp('Ket qua demo cau b la: ');
syms x1 x2 x3;
F = x1^2-2*x2^2-x3^2;
A = [5 0.01 9 0.05 7 0.03];
saiSoHam3Bien(F,A);

% Doan nay de goi ham cau d. Cau d chay lai su dung cau c nen khong can
% demo cau c
disp('Ket qua demo cau c la: ');
syms x1 x2 x3;
F = x1*x2/x3;
A = [3 0.08 7 0.03 10 0.1];
saiSoHamNBien(F,A);