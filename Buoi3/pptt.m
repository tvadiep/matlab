function [f0] = pptt(f, x0, deltaf)
    syms x;
    df = diff(f,x);
    k = 0;
    while 1
        k = k + 1;
        xn = x0 - subs(f,x,x0)/subs(df,x,x0);
        rExn = abs((xn-x0)/x0);
        disp(rExn);
        fx = subs(f,x,xn);
        if fx < deltaf
            break;
        end
    end
    f0 = fx;
end