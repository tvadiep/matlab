function[dF3DC,rEdF]=tinhDH(xx,yy,dF)
    dF3DC = (-3*yy(2)+4*yy(3)-yy(4))/(xx(3)-xx(2))/2;
    rEdF = abs((dF-dF3DC)/dF);
end