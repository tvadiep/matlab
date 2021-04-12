%Bai 4
%Bai toan 1
format long
syms x;
f = x^2 -sin(x) -50;
x0 =2;
Df = 10^(-3);
tieptuyen(f,x0,Df,'Bai toan 1');

%Bai toan 2
f = x^3 -6*x^2+2*x+25;
x0 =4;
Df = 10^(-3);
tieptuyen(f,x0,Df,'Bai toan 2');

%Bai 6