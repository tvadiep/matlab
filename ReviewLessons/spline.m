function [f_xx] = Spline(xx, yy, x0)
  format long;
    n = length(xx) - 1;
    X = zeros(1, n + 1);
    A = zeros(1, n + 1);
    for i = 0 : n
        X(i + 1) = xx(i + 1);
        A(i + 1) = yy(i + 1);
    end
    
    m = n - 1;
    G = zeros(1, m + 1);
    for i = 0 : m
        G(i + 1) = X(i + 2) - X(i + 1);
    end
    
    XA = zeros(1, m + 1);
    for i = 1 : m
        XA(i + 1) = 3.0 * (A(i + 2)*G(i) - A(i + 1)*(X(i + 2) - X(i)) + A(i)*G(i + 1)) / (G(i + 1)*G(i)); 
    end
    
    X1 = zeros(1, n + 1);
    X1(1) = 1;
    X2 = zeros(1, n + 1);
    X2(1) = 0;
    X3 = zeros(1, n + 1);
    X3(1) = 0;
    
    for i = 1 : m
        X1(i + 1) = 2 * (X(i + 2) - X(i)) - G(i)*X2(i);
        X2(i + 1) = G(i + 1) / X1(i + 1);
        X3(i + 1) = (XA(i + 1) - G(i) * X3(i)) / X1(i + 1);
    end
    
    X1(n + 1) = 1;
    X3(n + 1) = 0;
    b = zeros(1, n + 1);
    c = zeros(1, n + 1);
    d = zeros(1, n + 1);
    c(n + 1) = X3(n + 1);
    
    for i = 0 : m
        j = m - i;
        c(j + 1) = X3(j + 1) - X2(j + 1) * c(j + 2);
        b(j + 1) = (A(j + 2) - A(j + 1))/G(j + 1) - G(j + 1) * (c(j + 2) + 2.0 * c(j + 1))/ 3.0;
        d(j + 1) = (c(j + 2) - c(j + 1)) / (3.0 * G(j + 1));
    end

    % Tinh xap xi noi suy
    f_xx = zeros(1, length(x0));
    for i = 1 : length(xx)-1
        if (x0 > xx(i)) & (x0 < xx(i + 1))
            f_xx = A(i) + b(i).*(x0 - xx(i)) + c(i).*(x0 - xx(i)).^2 + d(i).*(x0 - xx(i)).^3; 
        end
    end
    
    disp(['- Gia tri noi suy tai ' num2str(x0) ' la:' num2str(f_xx)]);
    
    % Bieu dien Ham Spline 
    syms x
    for i = 1 : length(xx)-1
        f(i) = vpa(simplify(A(i) + b(i).*(x - xx(i)) + c(i).*(x - xx(i)).^2 + d(i).*(x - xx(i)).^3));
    end
    disp('- Ham Spline: ');
    disp(f');
    
    % Do thi Spline
    figure
    for i = 1 : length(xx)-1
        xv = xx(i):0.1:xx(i+1);
        yv = double(vpa(subs(f(i), x, xv)));
        grp1 = plot(xv, yv, 'LineWidth', 0.2);
        hold on
        grid on
        grp2 = plot(xx, yy, 'c-');
        grp3 = plot(xx, yy, 'or');
        grp4 = plot(x0, f_xx, 'g*');
    end
    hold off
    xlabel('X Value');
    ylabel('Y Value');
    title('Do thi bieu dien theo phuong phap Duong cong Spline');
    
end