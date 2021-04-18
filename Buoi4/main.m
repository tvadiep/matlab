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
x0 =5;
%Cau a:
f = exp(x)+2^(-x)+2*cos(x)-6;
SOL=tieptuyen(f,x0,Df,'Bai 8: Cau a');
disp('Ket qua cau 8a la: ');
disp('Phuong phap tiep tuyen:');
disp(SOL);
disp('Khong ton tai khoang phan nghiem nen khong su dung pp cat tuyen');
%Cau b:
f = log(x-1) + cos(x-1);
SOL=tieptuyen(f,x0,Df,'Bai 8: Cau b',[2,20]);
disp('Ket qua cau 8b la: ');
%Bai nay khong co nghiem la so thuc nen se bi warnings
disp('Phuong phap tiep tuyen:');
disp(SOL);
disp('Khong ton tai khoang phan nghiem nen khong su dung pp cat tuyen');

%Cau c:
f = (x-2)^2 -log(x);
%Tiep tuyen
SOL=tieptuyen(f,x0,Df,'Bai 8: Cau c(Tieptuyen)', [2,20]);
disp('Ket qua cau 8c la: ');
disp('Phuong phap tiep tuyen:');
disp(SOL);
%Cat tuyen
a = 2.02;
b=5;
A=[a,b];
SOL = cattuyen(f,A,Df,'Bai 8: Cau c(Cattuyen)');
disp('Ket qua phuong phap cat tuyen la: ');
disp(SOL)


%Cau d:
f = sin(x)-exp(-x);
%Tiep tuyen
SOL=tieptuyen(f,x0,Df,'Bai 8: Cau d(Tieptuyen)');
disp('Ket qua cau 8d la: ');
disp('Phuong phap tiep tuyen:');
disp(SOL);
%Cat tuyen
a = 2.02;
b=5;
A=[a,b];
SOL = cattuyen(f,A,Df,'Bai 8: Cau d(Cattuyen)');
disp('Ket qua phuong phap cat tuyen la: ');
disp(SOL)






