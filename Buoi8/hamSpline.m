function[SOL] = hamSpline(xx,yy,xc)
    syms x;
    n = length(xx);
    % Tinh do dai cac doan chia hi
    h = xx(2,:)-xx(1:n-1);
    
end