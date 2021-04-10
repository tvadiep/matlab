function[SOL] = lap(F,PI,x0, Df,m) %Gia tri m chi de phan biet 2 hinh(cau c voi cau d)
syms x;
k = 2;
xx =[x0];
while (1)
    x0 = vpa(subs(PI,x,x0));
    xx(k) = x0;
    k = k + 1 ;
    if abs(subs(F, x, x0)) < Df
        break;
    end
end
fi = figure;
fi.Name = sprintf('%s',m);
hold on
grid on
    x1 = linspace(-20,20);
    y = subs(F, x, x1);
    plot(x1,y);
    y = subs(F, x, xx);
    scatter(xx,y);
    xlabel('x')
    ylabel('y')
    title(sprintf('Do thi cua ham so: %s', char(F)));
hold off
SOL = x0;
end