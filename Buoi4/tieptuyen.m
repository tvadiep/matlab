function[SOL] = tieptuyen(f,x0,Df,plotname, range)
%{
    Ham nay so voi yeu cau de bai co su dung them 2 tham so
        1. Plotname: Chi de dat ten cho moi cai figure, giup thay de phan
        biet, cham diem.
        2. Range: doi voi cac ham o bai 4, can phai su dung range[-20,20]
        de visualize toan bo do thi. Tuy nhien bai 5 thi khong the chon cac
        gia tri <-2 (khong thoa man ham so.
         Do do phai chen them bien optional la range
%}

if ~exist('range','var')
    range(1) = -20;
    range(2) = 20;
end

syms x;
k = 1;
SOL =x0;
gt_f = vpa(subs(f,x,SOL));
xx = [];
xx(1)=x0;

while abs(gt_f) > Df
    gt_f = vpa(subs(f,x,SOL));
    gt_df = subs(diff(f,x),x,SOL);
    SOL = vpa(SOL - gt_f/gt_df);
    k =k+1;
    xx(k) = SOL;
end

fi = figure;
fi.Name = sprintf('%s',plotname);
hold on
grid on
    x1 = linspace(range(1),range(2));
    y = subs(f, x, x1);
    plot(x1,y);
    y = vpa(subs(f, x, xx));
    scatter(xx,y);
    xlabel('x')
    ylabel('y')
    title(sprintf('Do thi cua ham so: %s', char(f)));
hold off
end