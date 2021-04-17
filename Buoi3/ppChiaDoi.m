% B1: Khai bao ham so f(x)
% B2 Nhap a, b dong thoi kiem tra xem fa.fb<0?
% B3 Su dung vong lap(bat dau voi k =1)
%   c = a+b/2
%   Neu fc<df thi break;
% Khong thi neu fa.fc>0 thi gan a = c. Khong thi nguoc lai gan bang b
% Ket thuc vong lap, x gach = c



% Trong cai ham nay, F la function 
% A la cai mang chua a va b
% df la do sai so chap nhat (delta F)

function[SOL] = ppChiaDoi(F,A,df)
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