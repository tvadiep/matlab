% Ham bo tro cho cau c d bai 12
% Ham nay de lay sai so trong mot mang, tach ra thanh mot mang rieng

function[mangKetQua] = laySaiSo(mangDauVao) %Mang dau vao o day thuoc dang bai 12, so phan tu o vi tri le la Xi, chan la delta Xi
n = max(size(mangDauVao));
mangKetQua = [];
for i = 1:n
    if mod(i,2) == 0
        mangKetQua(i/2) = mangDauVao(i);
    end  
end