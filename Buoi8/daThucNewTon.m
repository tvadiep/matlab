function [SOL] = daThucNewTon(xx, yy, xc)
    syms x;
    n = length(xx);
    
    % Tiep den ta can xay dung cac ti sai phan
    TSP = [];
    % Tinh N1
    TSP(1,:) = yy;
    
    % Tinh tu N2-Nn
    for i = 2:n
        for j = 1:(n-i+1)
            TSP(i,j) = (TSP(i-1,j+1)-TSP(i-1,j))/(xx(i+j-1)-xx(j));
        end
    end
    
    % Tiep den ta xay dung da thuc noi suy N(x)
    % khoi tao da thuc = 0
    N = TSP(1,1);
    for i = 2:n
        tmp = 1;
        for j = 1:(i-1)
            tmp = tmp*(x-xx(j));
        end
        N = N + TSP(i,1)*tmp;
    end
     % Tinh gia tri xap xi yc
      SOL = subs(N,x,xc);
     % Ve do thi
     fi = figure;
     fi.Name = sprintf('Do Thi Noi Suy Boi Da Thuc NewTon');
     hold on
     grid on
        x_vals = linspace(xx(1),xx(n));
        y_vals = subs(N,x,x_vals);
        plot(x_vals,y_vals);
        scatter(xx,yy);
        scatter(xc,SOL,'filled');
        title(sprintf('Do Thi Cua Ham So: %s',char(N)));
     hold off
    
    
    
    
    
end