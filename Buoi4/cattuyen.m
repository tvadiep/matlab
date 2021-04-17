function[SOL] = cattuyen(f,A,Df,plotname,range)

if ~exist('range','var')
    range(1) = -20;
    range(2) = 20;
end

syms x
a = A(1);
b = A(2);

gt_fa = vpa(subs(f,x,a));
gt_fb = vpa(subs(f,x,b));

SOL = vpa(a-(b-a)/(gt_fb-gt_fa)*gt_fa);
gt_fSOL = vpa(subs(f,x,SOL));

k = 1;
xx = [];
xx(k) = SOL;

while abs(gt_fSOL)> Df
    if gt_fSOL*gt_fa >0
        a = SOL;
    else
        b = SOL;
    end
    gt_fa = vpa(subs(f,x,a));
    gt_fb = vpa(subs(f,x,b));
    SOL = vpa(a-(b-a)/(gt_fb-gt_fa)*gt_fa);
    gt_fSOL = vpa(subs(f,x,SOL));
    xx(k) = SOL;
    k = k+1;
end

fi = figure;
fi.Name = sprintf('%s',plotname);
hold on
grid on
    x1 = linspace(range(1),range(2));
    y = subs(f, x, x1);
    plot(x1,y);
    y = subs(f, x, xx);
    scatter(xx,y);
    xlabel('x')
    ylabel('y')
    title(sprintf('Do thi cua ham so: %s', char(f)));
hold off

end