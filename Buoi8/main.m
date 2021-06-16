format long

% Phan chay cua da thuc NewTon chay voi ma tran co kich thuoc N
% O day se lay vi du la bai tap 9
% Bai 9 - Da thuc Newton
xx = [-3.2 -2.5 -1.7 -0.8 0.3 1.5];
yy = [-8.982 -5.831 -4.261 -1.837 -3.298 -0.249];
xc = -2;
disp('Ket Qua Cua Bai 9 Khi Su Dung Da Thuc NewTon, x = 2 la: ');
yc = vpa(daThucNewTon(xx,yy,xc));
disp(yc);

xc = 0;
disp('Ket Qua Cua Bai 9 Khi Su Dung Da Thuc NewTon, x = 0 la: ');
yc = vpa(daThucNewTon(xx,yy,xc));
disp(yc);

% Ham 


