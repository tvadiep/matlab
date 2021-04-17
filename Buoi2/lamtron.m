% Bai tap 9
function[ketqua] = lamtron(x,n, mode) %x la so can lam tron, n la so chu so can lam tron
  if mode == 1 % Phuong phap lam tron
    interger = floor(x*(10^n));
    bias = mod((x*(10^(n+1))),10);
    if bias >= 5
        interger = interger + 1;
    end
    ketqua = interger/(10^n);
  end
  if mode == 2 % Phuong phap chat cut
    interger = floor(x*(10^n));
    ketqua = interger/(10^n);
  end
end