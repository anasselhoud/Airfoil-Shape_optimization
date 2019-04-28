function [p]=randp(p,range)
%%%%%%%%%%%%%%%%%%%%%%%%
%this is a special randomizer for a given range for the GA to create random
%individuals
%%%%%%%%%%%%%%%%%%%%%%%%
if length(range)==length(p)
    p1=2*range(1)*rand+p(1)-range(1);
    p2=2*range(2)*rand+p(2)-range(2);
    p3=2*range(3)*rand+p(3)-range(3);
    p4=2*range(4)*rand+p(4)-range(4);
    p5=2*range(5)*rand+p(5)-range(5);
    p6=2*range(6)*rand+p(6)-range(6);
    p7=2*range(7)*rand+p(7)-range(7);
    p8=2*range(8)*rand+p(8)-range(8);
    p9=2*range(9)*rand+p(9)-range(9);
    p10=2*range(10)*rand+p(10)-range(10);
    p11=2*range(11)*rand+p(11)-range(11);
elseif length(range)==2*length(p)
    p1=(-range(1)+range(2))*rand+range(1);
    p2=(-range(3)+range(4))*rand+range(3);
    p3=(-range(5)+range(6))*rand+range(5);
    p4=(-range(7)+range(8))*rand+range(7);
    p5=(-range(9)+range(10))*rand+range(9);
    p6=(-range(11)+range(12))*rand+range(11);
    p7=(-range(13)+range(14))*rand+range(13);
    p8=(-range(15)+range(16))*rand+range(15);
    p9=(-range(17)+range(18))*rand+range(17);
    p10=(-range(19)+range(20))*rand+range(19);
    p11=(-range(21)+range(22))*rand+range(21);
end
%final random PARSEC parameters
p=[p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11];