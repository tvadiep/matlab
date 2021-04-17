% Trong truong hop cau a, ham nay la: u = ln(2y+x^2)
% Tinh gia tri u tai x = 1.976

% Function chi can truyen 1 tham so n la chu so can lam tron de lay gia tri
% thuc.
function [tuyetDoiGH, tuongDoiGD] = hamCauD(F,A,n)
m = max(size(A));
mangBien = sym('x',[1,m]);
syms(mangBien);

gtHamSo = double(subs(F,mangBien,A));

gtHamSo3 = lamtron(gtHamSo,3,1); % Gia tri ham so lam tron 3 chu so tp
gtHamSoN = lamtron(gtHamSo,n,1); % Gia tri ham so lam tron n chu so tp
%Tinh sai so
tuyetDoi = abs(gtHamSo3-gtHamSoN);
tuongDoi = abs(tuyetDoi/gtHamSoN);

%Lam tron len de lay gioi han cho sai so tuyet doi
%tuyetDoiGH = ceil(tuyetDoi*(10^6));
tuyetDoiGH = tuyetDoi + 1

%Lam tron len de lay gioi han cho sai so tuong doi
%tuongDoiGH = ceil(tuongDoi*(10^6));
tuongDoiGH = tuongDoi + 1

end