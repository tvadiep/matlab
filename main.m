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

%Bai 6
syms x
F = x^3+x-5;
PI = (5-x)^(1/3);

disp('Ket qua bai 6 cau a la: ');
x0 = 1.3;
Df = 3*10^(-3);
lap(F,PI,x0, Df)





