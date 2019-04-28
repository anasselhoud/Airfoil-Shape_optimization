function []=plotairfoil(p,c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%this function plots the airfoil shape for a given (p) PARSEC parameters
%(P.S.) c is the graph color
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dbeta=pi/200;
beta=0;
Z_u0=[];
Z_d0=[];
x0=[];
k=1;
a=parsec(p); %PARSEC coeffecients
for i=0:dbeta:pi
    x0(k)=(1-cos(beta))/2;
    [Z_u0(k) ,Z_d0(k)]=yCoord2(a,x0(k)); %airfoil coordinates
    beta=beta+dbeta;
    k=k+1;
end
Z_d0=(Z_d0(end-1:-1:1));
X=(1-cos(0:dbeta:2*pi))/2;
Y=[Z_u0 Z_d0];
%plotting
plot(X,Y,c)