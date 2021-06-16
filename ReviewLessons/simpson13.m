function[SOL] = simpson13(mssv)
    A = mod(mssv,10);
    m=12;
    
    vv = [7 (7+14+A)/2 14+A];
    u = (8/60.*vv)./exp(8/60.*vv);
    
    r = vv./exp(vv);
    disp('u la: ');
    disp(u);
    du = (5+A)/60;
    f = 12./u*8/60;
    disp('f la: ');
    disp(f);
    t = (f(3)-f(1))/6 * (f(1) +4*f(2) + f(3));
    SOL = t;
end