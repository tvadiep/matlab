function[SOL] = daThucTongQuat(xx,yy,xc) %Voi xx co do dai n
    syms x;
    n = length(xx);
    X =[];
    % Xay dung 2 ma tran X va Y
    % Dau tien la ma tran X
    for i = 1:n
        for j = 1:n
            X(i,j) = xx(i)^(j-1);
        end
    end

    % Tiep den la ma tran Y
    for i = 1:n
        Y(i,1) = yy(i);
    end
    % Tinh vector tham so A
    A = inv(X)*Y;
    disp(Y);
    A = vpa(A);
    % Xay dung da thuc noi suy
    P = 0;
    for i = 1:n
        P = P + A(i)*x^(i-1);
    end
    P = simplify(P);
    % Cuoi cung la tinh ket qua noi suy yc, luu vao bien SOL
    SOL = subs(P,x,xc);
    % Tiep theo ta cung can ve do thi cua da thuc xap i de minh hoa
    fi = figure;
    fi.Name = sprintf('Noi Suy Bang Da Thuc Tong Quat');
    hold on
    grid on
        x1 = linspace(xx(1),xx(n));
        y = subs(P, x, x1);
        plot(x1,y);
        scatter(xx,yy);
        scatter(xc,SOL,'filled');
        title(sprintf('Do thi cua ham so: %s', char(P)));
    hold off
end