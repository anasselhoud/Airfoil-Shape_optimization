
%Generating NACA 2412 airfoil. We are getting at the end, 200 points of the airfoil 
%%that we will import to our genetic algorithm.

function [xu,xl,yu,yl]=profilnaca2412(x)

n=length(x);
yc=zeros(1,n); %% coord de la partie stable
yt=zeros(1,n); %% coord de la partie dynamique
theta=zeros(1,n); %%angle dynamique

xu=zeros(1,n); %%x de lextrados
xl=zeros(1,n); %% x de lintrados


yu=zeros(1,n); %%x de lextrados
yl=zeros(1,n); %% x de lintrados

%Parametres du profil 

m=0.02; %% cambrure maximale
p=0.4; %%position de cambrure max
c=1; %% longueur de la corde
t=0.12; %%max thickness

for i=1:n
    if 0<=x(i)<(p*c)
        yc(i)=m*x(i)*(2*p-(x(i)/c))/(c*(p^2));
    else (p*c)<=x(i)<c
        yc(i)=m*(1-2*p+2*p*(x(i)/c)-(x(i)/c)^2)/((1-p)^2);
    end
end


for i=1:n
    yt(i)=5*t*(0.2969*sqrt(x(i)/c)-0.126*(x(i)/c)-0.3516*(x(i)/c)^2 + 0.2843*(x(i)/c)^3 - 0.1015*(x(i)/c)^4);
end


for i=1:n
    if 0<=x(i)<=(p*c)
        theta(i)=atan(2*m*(p-(x(i)/c))/(c*(p^2)));
    else (p*c)<=x(i)<c
        theta(i)=atan(2*m*(p-(x(i)/c))/(c*(1-p)^2));
    end
end

for i=1:n
   xu(i)=x(i)-yt(i)*sin(theta(i));
    xl(i)=x(i)+yt(i)*sin(theta(i));
    yu(i)=yc(i)+yt(i)*cos(theta(i));
    yl(i)=yc(i)-yt(i)*cos(theta(i));
end

%we can plot the airfoil shape 

plot(xu,yu)
hold on
plot(xl,yl)


end
