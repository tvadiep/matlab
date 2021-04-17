function [df,F,Xct,I] =khaosat(f)
syms x;
df = diff(f,x);
F = int(f,x);
hold on; ezplot(f, [-4,4]);
ezplot(df, [-4,4]);
ezplot(F,[-4,4]);

%Tim cac diem ma dao ham bang 0
Xct=solve(df ==0,x)
%Tinh tich phan tren khoang [-5,5]
I = int(f,x,-5,5);
end