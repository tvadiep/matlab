function[SOL] = cattuyen(f,A,Df)
syms x
gt_fa = vpa(subs(f,x,A(1)));
gt_fb = vpa(subs(f,x,A(2)));
SOL = vpa(A(1)-(A(2)-A(1))/(gt_fb-gt_fa)*gt_fa);
gt_fSOL = vpa(subs(f,x,SOL));
while abs(gt_fSOL)> Df
    if gt_fSOL*gt_fa >0
        a = SOL;
    else
        b = SOL;
    end
    gt_fa = vpa(subs(f,x,A(1)));
    gt_fb = vpa(subs(f,x,A(2)));
    SOL = vpa(A(1)-(A(2)-A(1))/(gt_fb-gt_fa)*gt_fa);
    gt_fSOL = vpa(subs(f,x,SOL));
end
disp(SOL);
end