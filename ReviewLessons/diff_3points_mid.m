function [df] = diff_3points_mid(xx, yy)
    df = (yy(3) - yy(1))/(xx(3) - xx(1));
end