% Chay cau A
disp('Ket qua demo cau A la: ');
syms n;
n =6;
hamCauA(n);

% Chay cau B
disp('Ket qua demo cau B la: ');
syms n;
n =6;
hamCauB(n);

%Chay cau C
disp('Ket qua demo cau C la: ');
syms n;
n =6;
hamCauC(n);


%Chay cau D
disp('Ket qua demo cau D la: ');
syms n x1 x2 x3;
n =6;
F = x1*x2^x3;
A =[1.021 2.541 3.125];
hamCauD(F,A,n);


