function[SOL] = ppLap(F, PI, df,x0)
k = 0;
syms x;
while(1)
    k = k + 1;
    x = subs(PI, x,xPrev);
    if subs(PI, x, xNext) < df
        xPrev =xNext;
        break;
    end
end
SOL = xPrev;
end