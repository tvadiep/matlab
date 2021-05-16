function[SOL] = daThucLagrange(xx,yy,xc) %Voi xx co do dai n
    syms x;
    n = length(xx);
    disp(n);
    L = [];
    for i = 1:n
        tmp_xx = xx(xx~=xx(i));
        disp(tmp_xx);
        L(i) = 1;
        for j = 1:(n-1)
            L(i) = L(i)*(x-tmp_xx(j))/(xx(i)-tmp_xx(j));
        end
    end
    P = 0;
    for i = 1:n
        P = P + L(i)*yy(i);
    end
    P = simplify(P);
    SOL = subs(P,x,xc);
    
    fi = figure;
    fi.Name = sprintf('Ham noi suy boi da thuc Lagrange');
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