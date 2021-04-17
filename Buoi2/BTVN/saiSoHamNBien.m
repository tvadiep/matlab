%Neu ham tinh n bien thi ta chi can truyen F va Arr vao thoi, sau do ta se
%tim ra so bien (n) bang cach lay size cua Arr/2 ( vi Arr chua ca cac gia
%tri x va cac gia tri sai so tuong ung. Ta se sap xep thanh: A =(x1 dx1 x2
%dx2 x3 dx3...)


function[tuyetDoi,tuongDoi] = saiSoHamNBien(F, Arr) %Trong Arr chua 4 gia tri, [x1 dx1, x2, dx2] 

mangGiaTri = layGiaTri(Arr);
mangSaiSo = laySaiSo(Arr);

n = max(size(mangGiaTri));
mangBien = sym('x',[1,n]);
syms(mangBien);

f_x1_xn = subs(F,mangBien,mangGiaTri);
% Mang gia tri dao ham theo tung bien
mangDaoHam =[];

for i = 1:n
    df_i = diff(F,mangBien(i));
    mangDaoHam(i) = subs(df_i, mangBien, mangGiaTri);
end


tuyetDoi = sum(mangDaoHam.*mangSaiSo)
tuongDoi = tuyetDoi/f_x1_xn
end