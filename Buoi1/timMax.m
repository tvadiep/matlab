function [M] = timMax(a,b,c)
M = a;
if b>a, M=b;end
if c>M, M=c;end
end