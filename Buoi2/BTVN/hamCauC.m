% Trong truong hop cau a, ham nay la: u = xtany +(x+y)^2

% Function chi can truyen 1 tham so n la chu so can lam tron de lay gia tri
% thuc.
function [tuyetDoiGH, tuongDoiGD] = hamCauC(n)
syms x y;
x = -1.395;
y = 1.643;
gtHamSo = x*tan(y) +(x+y)^2;
gtHamSo3 = lamtron(gtHamSo,3,1); % Gia tri ham so lam tron 3 chu so tp

gtHamSoN = lamtron(gtHamSo,n,1); % Gia tri ham so lam tron n chu so tp

%Tinh sai so
tuyetDoi = abs(gtHamSo3-gtHamSoN);
tuongDoi = abs(tuyetDoi/gtHamSoN);

%Lam tron len de lay gioi han cho sai so tuyet doi
% tuyetDoiGH = ceil(tuyetDoi*(10^6));
tuyetDoiGH = tuyetDoi + 1

%Lam tron len de lay gioi han cho sai so tuong doi
% tuongDoiGH = ceil(tuongDoi*(10^6));
tuongDoiGH = tuongDoi + 1

end