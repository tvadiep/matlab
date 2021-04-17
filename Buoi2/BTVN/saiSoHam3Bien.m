function[tuyetDoi,tuongDoi] = saiSoHam3Bien(F, Arr) %Trong Arr chua 4 gia tri, [x1 dx1, x2, dx2] 
% Code nay chi vi du ve viec truyen ham vao 1 function ma thoi
syms x1  x2 x3;
f_x1_x2 = subs(F,[x1,x2,x3],[Arr(1), Arr(3), Arr(5)]); %Tinh gia tri cua cai F tai may gia tri cu the, dung de tinh sai so tuong doi

df_x1 = diff(F,x1); %Tinh dao ham cua F theo x1
df_x2 = diff(F,x2); %Tinh dao ham cua F theo x2
df_x3 = diff(F,x3); %Tinh dao ham cua F theo x3

gt_df_x1 = subs(df_x1,[x1,x2,x3],[Arr(1),Arr(3),Arr(5)]);
gt_df_x2 = subs(df_x2,[x1,x2,x3],[Arr(1),Arr(3),Arr(5)]);
gt_df_x3 = subs(df_x3,[x1,x2,x3],[Arr(1),Arr(3),Arr(5)]);

tuyetDoi = abs(gt_df_x1)*Arr(2) + abs(gt_df_x2)*Arr(4) + abs(gt_df_x3)*Arr(6)
tuongDoi = tuyetDoi/f_x1_x2

end