xx = [-3.2 -2.5 -1.7 -0.8 0.3 1.5];
for i=1:6
    tmp_xx = xx(xx~=xx(i));
end
disp(tmp_xx);