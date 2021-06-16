% Ben duoi la truong hop x = -2,  truong hop x = 0tuong tu
%khong chay de khoi ton tgian cua thay =))

format long
% Phan chay cua da thuc tong quat chay voi ma tran co kich thuoc N
% O day se lay vi du la bai tap 3
xx = [-3.2 -2.5 -1.7 -0.8 0.3 1.5];
yy = [-8.982 -5.831 -4.261 -1.837 -3.298 -0.249];
xc1 = -2;
xc2 = 0;
disp('Ket qua cau 3 khi dung da thuc tong quat, x =-2 la: ');
yc1 = vpa(daThucTongQuat(xx,yy,xc1));
disp(yc1);


% Phan chay cua da thuc Lagrange chay voi ma tran co kich thuoc N
% O day se lay vi du la bai tap 3
xx = [-3.2 -2.5 -1.7 -0.8 0.3 1.5];
yy = [-8.982 -5.831 -4.261 -1.837 -3.298 -0.249];
xc1 = -2;
xc2 = 0;
yc1 = vpa(daThucLagrange(xx,yy,xc1));
disp(yc);