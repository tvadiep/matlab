function[SOL] = tieptuyen(f,x0,Df,plotname)
syms x;
k = 1;
SOL =x0;
gt_f = vpa(subs(f,x,SOL));
xx = [x0];
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
    x1 = linspace(-20,20);
    y = subs(f, x, x1);
    plot(x1,y);
    y = subs(f, x, xx);
    scatter(xx,y);
    xlabel('x')
    ylabel('y')
    title(sprintf('Do thi cua ham so: %s', char(f)));
hold off


disp(SOL);
disp(xx(k))
end