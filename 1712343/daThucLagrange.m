function[SOL] = daThucLagrange(xx,yy,xc) %Voi xx co do dai n
    syms x;
    n = length(xx);
    disp(n);
    P = 0;
    for i = 1:n
        tmp_xx = xx(xx~=xx(i));
        L = 1;
        for j = 1:(n-1)
            L = L*(x-tmp_xx(j))/vpa((xx(i)-tmp_xx(j)));
        end
        P = P + L*yy(i);
    end
    SOL = subs(P,x,xc);
    
    fi = figure;
    fi.Name = sprintf('Noi Suy Bang Da Thuc Lagrange');
    hold on
    grid on
        x_vals = linspace(xx(1),xx(n));
        y_vals = subs(P,x,x_vals);
        plot(x_vals,y_vals);
        scatter(xx,yy);
        scatter(xc,SOL,'filled');
        title(sprintf('Do thi cua ham so: %s', char(P)));
    hold off
end