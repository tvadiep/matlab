x1_a = 5; aEx1 = 0.03;
x2_a = 3; aEx2 = 0.06;
x3_a = 7; aEx3 = 0.04;

syms x1 x2 x3;
y = x1^2+ 2*x2^3 + 3*x3^2;
y_a = subs(y, [x1,x2,x3],[x1_a,x2_a,x3_a]) % thay cac gia tri cu the vao cac bien

% 3 cai dong duoi nay la de tinh dao ham rieng cua cai ham
% tham so dau tien la cai ham, tham so tiep theo la cai bien can tinh
% "rieng"
dy1 = diff(y,x1)
dy2 = diff(y,x2)
dy3 = diff(y,x3)
