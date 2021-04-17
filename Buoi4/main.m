%Bai 4
%Bai toan 1
format long
syms x;
f = x^2 -sin(x) -50;
x0 =2;
Df = 10^(-3);
SOL = tieptuyen(f,x0,Df,'Bai4: Bai toan 1');
disp('Ket qua cau 4c la: ');
disp(SOL);
%Bai toan 2
f = x^3 -6*x^2+2*x+25;
x0 =4;
Df = 10^(-3);
SOL = tieptuyen(f,x0,Df,'Bai 4: Bai toan 2');
disp('Ket qua cau 4d la: ');
disp(SOL);


%Bai 5
f = x+log(x+2)-10;
range=[-2,20];
%Cau a
x0 = 7;
Df = 10^(-3);
SOL=tieptuyen(f,x0,Df,'Bai 5: Cau a',range);
disp('Ket qua cau 5a la: ');
disp(SOL);
%Cau b
x0 = 9;
Df = 2*10^(-3);
SOL = tieptuyen(f,x0,Df,'Bai 5: Cau b',range);
disp('Ket qua cau 5b la: ');
disp(SOL);
%Cau c
x0 = 5;
Df = 5*10^(-3);
SOL = tieptuyen(f,x0,Df,'Bai 5: Cau c',range);
disp('Ket qua cau 5c la: ');
disp(SOL);
%Cau d
x0 = 3;
Df = 5*10^(-3);
SOL = tieptuyen(f,x0,Df,'Bai 5: Cau d',range);
disp('Ket qua cau 5d la: ');
disp(SOL);

%Bai 6
disp('Bai 6 viet function, da viet xong, luu trong file cattuyen.m!')

%Bai 7
syms x
f = 2^x + 3^x -10*x-30;

%Cau a
a = -5;
b =-3;
A=[a,b];
Df = 10^(-3);
SOL = cattuyen(f,A,Df,'Bai 7: Cau a');
disp('Ket qua bai 7a la: ');
disp(SOL)

%Cau b
a = -4;
b =-2;
A=[a,b];
Df = 2*10^(-3);
SOL = cattuyen(f,A,Df,'Bai 7: Cau b');
disp('Ket qua bai 7b la: ');
disp(SOL)

%Cau c
a = 2;
b = 4;
A=[a,b];
Df = 3*10^(-3);
SOL = cattuyen(f,A,Df,'Bai 7: Cau c');
disp('Ket qua bai 7c la: ');
disp(SOL)

%Cau d
disp('Cau d de giong cau c');


%Bai 8
syms x
Df = 10^(-3);

%Cau a:
f = exp(x)+2^(-x)+2*cos(x)-6;

%Cau b:
f = log(x-1) + cos(x-1);

%Cau c:
f = (x-2)^2 -log(x);

%Cau d:
f = sin(x)-exp(-x);








