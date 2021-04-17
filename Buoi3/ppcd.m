function [sol, R] = ppcd(f, A, delta_f)
a = A(1);
b = A(2);
syms x;
fa = subs(f,x,a);
fb = subs(f,x,b);
if (fa*fb < 0)
    k = 0;
    while (1)
        k = k + 1;
        c = (a + b)/2;
        rEc = abs((a - c)/c);
        fc = subs(f,x,c);
        
        if (fc < delta_f)
            
            break
        end
        
        dau = f(a)*f(b);
        
        if (dau > 0)
            a = c;
        end
        
        if (dau < 0)
            b = c;
        end
    end
    sol = c;
    R = rEc;
end


end