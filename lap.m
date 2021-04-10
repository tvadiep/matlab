function[SOL] = lap(F,PI,x0, Df)
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
hold on
grid on
    x1 = linspace(1,2);
    y = subs(F, x, x1);
    plot(x1,y);
    y = subs(F, x, xx);
    scatter(xx,y);
    xlabel('x')
    ylabel('y')
    title(F);
hold off
SOL = x0;
end