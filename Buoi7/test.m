% Nhap vector xx, yy va xc vao may 
xx = [1,2.2,3.2,4];
yy = [1.678, 3.267, 2.198,3.787];
xc = 2.5;
% Sau khi nhap du lieu thi minh chuyen no thanh dang ma tran
% Minh xay dung 2 ma tran X va Y 
X = [1 xx(1) xx(1)^2 xx(1)^3;
     1 xx(2) xx(2)^2 xx(3)^3;
     1 xx(3) xx(3)^2 xx(3)^3;
     1 xx(4) xx(4)^2 xx(4)^3];
Y = [yy(1);yy(2);yy(3);yy(4)];
% Tiep den chung ta giai phuong trinh XA = Y
A = inv(X)*Y;
% Xay dung da thuc noi suy Pn(x) 
syms x;
P = A(1) + A(2)*x + A(3)*x^2 + A(4)*x^3;

% Xap xi giai tri yc 
yc = subs(P,x,xc);
% Ve do thi cua da thuc xap xi 
ezplot(P,[xx(1) xx(end)]);
%Ve cac diem trong abng du lieu ban dau
hold on;
plot(xx,yy,'bo');
















