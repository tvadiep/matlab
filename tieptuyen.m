function[SOL] = tieptuyen(f,x0,Df)
syms x;
k = 0;
while subs(f,x,x0) > Df
    k =k +1;
    disp(k);
    gt_f = subs(f,x,x0);
    gt_df = subs(diff(f,x),x,x0);
    x0 = x0 - gt_f/gt_df;
end
SOL = x0
end