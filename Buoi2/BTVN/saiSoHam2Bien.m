% Cau 12 a: Function tinh sai so tuyet doi va tuong doi cua bieu thuc toan
% hoc hai bien


%Neu ham tinh n bien thi ta chi can truyen F va Arr vao thoi, sau do ta se
%tim ra so bien (n) bang cach lay size cua Arr/2 ( vi Arr chua ca cac gia
%tri x va cac gia tri sai so tuong ung. Ta se sap xep thanh: A =(x1 dx1 x2
%dx2 x3 dx3...)

%Con cai nay ham 2 bien ta lam kieu khac hard hon( vi ta biet chac truyen
%vao 4 gia tri trong Arr)

function[tuyetDoi,tuongDoi] = saiSoHam2Bien(F, Arr) %Trong Arr chua 4 gia tri, [x1 dx1, x2, dx2] 
% Code nay chi vi du ve viec truyen ham vao 1 function ma thoi
syms x1  x2;
f_x1_x2 = subs(F,[x1,x2],[Arr(1), Arr(3)]); %Tinh gia tri cua cai F tai may gia tri cu the, dung de tinh sai so tuong doi

df_x1 = diff(F,x1); %Tinh dao ham cua F theo x1
df_x2 = diff(F,x2); %Tinh dao ham cua F theo x2

gt_df_x1 = subs(df_x1,[x1,x2],[Arr(1),Arr(3)]);
gt_df_x2 = subs(df_x2,[x1,x2],[Arr(1),Arr(3)]);

tuyetDoi = abs(gt_df_x1)*Arr(2) + abs(gt_df_x2)*Arr(4)
tuongDoi = tuyetDoi/f_x1_x2

end


%De lam duoc bai nay truoc tien phai co gia tri cua 2 bien (x1 va x2) cung
%nhu do sai lech cua 2 bien do la (dx1 va dx2)
% Tuc la truyen vao cai ham F va 4 gia tri kia
%--> Sau do ta se tinh 2 cai dao ham rieng cua F
%--> Sau do se lay 2 cai x1, x2 the vo cai F .
%--> Roi dem cai ket qua do nhan tuong ung voi may cai dx1 va dx2 kia, cong
%lai ta se duoc  cai sai so tuong doi.

% De tinh sai so tuong doi thi ta can  tinh them cai gia tri cua F tai 2
% diem x1 va x2 nua. Sau do lay cai sai so tuyet doi chia cho cai gia tri
% nay cua F, ta duoc cai sai so tuong doi