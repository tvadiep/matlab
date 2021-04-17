% Bai tap ve nha 5,6

format long;
a =1;
b = 1.4;
A = [a b];
df = 10^(-3);

syms x;
F = x + sin(x) -2;
x = ppChiaDoi(F,A,df);


%Chay pp Lap
syms x;
F = x + sin(x) -2;
PI = 2-sin(x);
x0 = 1.05;
df = 10^(-3);

x = ppLap(
