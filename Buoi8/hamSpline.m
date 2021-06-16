function[SOL] = hamSpline(xx,yy,xc)
    syms x;
    n = length(xx)-1; % n la bac cua da thuc
    % Tinh do dai cac doan chia hi
    h = xx(2,:)-xx(1:n); %h1-h(n)
    
    % Tiep theo ta can tao ra mot hpt gom n-1 pt voi n-1 bien(m1-m(n-1))
    
    VT = [];
    VP = [];
    
    for i = 1:n-1
        tmp_vec = [h(i)/6 (h(i)+h(i+1))/3 h(i+1)/6];
        VT(i,:) = [1:n-1];
        for j=i:i+2
            VT(i,j) = tmp_vec(j-i+1);
        end
        VP(i) = (y(i+2)-y(i+1))/h(i+1) - (y(i+1)-y(i))/h(i);
    end
    VT(1,1) = 0;
    VT(n-1,n-1) = 0;
    m_val = inv(VT)*VP;
    
    % Sau khi tinh xong m thi ta se su dung m de tinh cai M va N
    
    for i=1:n
        M(i) = yy(i) - m(i)*h(i)^2;
        N(i) = yy(i+1) -m(i+1)*h(i)^2/6;
    end
    
    S = [];
    for i =1:n-1
        S(i) = m_val(i+1)*(x-xx(i))^3/(6*h(i)) + m_val(i)*(xx(i+1)-x)^3/(6*h(i)) + M(i)*(xx(i+1)-x)^3/h(i) + N(i)*(x-xx(i))/h(i);
    end
    
    for i = 1:n-1
        disp(S(i));
    end
    % Sau khi co dc M va N, ta su dung de tinh S

    
    
end