% Bai tap 10 
function[kq] = checkValidity(gtCanCheck, gtTieuChuan, saiSoTuyetDoiGH)
if gtCanCheck >= gtTieuChuan-saiSoTuyetDoiGH & gtCanCheck <= gtTieuChuan + saiSoTuyetDoiGH
   kq = 'True';
else
    kq= 'False';
end
end