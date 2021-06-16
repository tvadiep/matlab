% Cau 4:
format long
sol = simpson13(1712343);
disp(sol);




tt = [26.67 93.33 148.89 315.56];
vv = [1.35 0.085 0.012 0.00075];
yy = log(vv);
Y = sum(yy);

X = sum(tt);
XX = sum(tt.*tt);
XY = sum(tt.*yy);
n = 5;
syms a b
[a,b] = solve(XX*a + X*b == X*Y, X*a + n*b == Y);

syms x
SOL = vpa(exp(a*x+b));
disp(vpa(SOL));

ezplot(SOL,[tt(1),tt(4)]);
hold on;
plot(tt,vv,'bo');


