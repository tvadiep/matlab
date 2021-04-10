%Bai 5
syms x
f = exp(x)-x-3;

%Cau a
disp('Ket qua bai 5 cau a la: ');
a = 0; b= 3;
A = [a b];
Df = 10^(-3);
chiadoi(f,A,Df)

%Cau b
disp('Ket qua bai 5 cau b la: ');
a = 0; b= 2;
A = [a b];
Df = 5*10^(-3);
chiadoi(f,A,Df)

%Cau c
disp('Ket qua bai 5 cau c la: ');
a = -3;b= 0;
A = [a b];
Df = 10^(-4);
chiadoi(f,A,Df)

%Cau d
disp('Ket qua bai 5 cau d la: ');
a = -3;b= -1;
A = [a b];
Df = 10^(-4);
chiadoi(f,A,Df)

disp('KET QUA BAI 6 VA BAI 7 NHU HINH');
%Bai 6
syms x

disp('Ket qua bai 6 cau a, b: Da viet function');
f = x + sin(x) -2;
PI = 2 - sin(x);
x0 = 1.05;
Df = 10^(-3);
lap(f, PI, x0, Df,"Bai 6 cau c");

disp('Ket qua bai 6 d la: ');
disp('Neu su dung PI = 5-x^2 thi f(x) se cang ngay cang tang, vi dao ham cua PI >1. Doi lai PI = sqrt(5-x) nhu ben duoi, ta duoc: ');
f = x^2+x-5;
PI = sqrt(5-x);
x0 = 1.5;
Df = 10^(-3);
lap(f, PI, x0, Df,"Bai 6 cau d");

%Bai 7
syms x;
f = x-x/2-1/x;
PI = x/2+1/x;

%Cau a
% Bai 7 cau a
x0 =1;
Df = 10^(-3);
lap(f,PI,x0,Df,"Bai 7 cau a");

% Bai 7 cau b
x0 =2;
Df = 3*10^(-3);
lap(f,PI,x0,Df,"Bai 7 cau b");

% Bai 7 cau c
x0 =-2;
Df = 10^(-2);
lap(f,PI,x0,Df,"Bai 7 cau c");

% Bai 7 cau d
x0 =-5;
Df = 10^(-4);
lap(f,PI,x0,Df,"Bai 7 cau d");


