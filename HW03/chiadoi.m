function[SOL] = chiadoi(F,A,df)
a = A(1);
b = A(2);
syms x;
fa = subs(F, x, a);
fb = subs(F, x, b);
if fa*fb<0
    k = 0;
    c = 0;
    while(1)
        k = k+1;
        c = (a + b)/2;
        if abs(subs(F, x, c)) < df
            break
        end
        if subs(F, x, c)* subs(F, x, a) > 0
            a = c;
        else
            b = c;
        end
    end
    SOL = c;
end
end