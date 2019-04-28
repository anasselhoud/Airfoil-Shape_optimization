

function [A, maxThickness]=airenaca(p)
dbeta=pi/200;
Z_u0=[];
Z_d0=[];
x0=[];
bet=0;
k=1;

a=parsec(p);    %PARSEC coeffecients
for i=0:dbeta:pi
    x0(k)=(1-cos(bet))/2;
    [Z_u0(k) ,Z_d0(k)]=yCoord2(a,x0(k));   %coordinate array
    bet=bet+dbeta;
    k=k+1;
end
maxThickness=max(abs(Z_u0-Z_d0));

yu=Z_u0;
yl=Z_d0;

z1=trapz(x0,yu);
z2=trapz(x0,yl);
A=z1-z2;
end
