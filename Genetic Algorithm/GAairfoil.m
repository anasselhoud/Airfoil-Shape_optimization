function [AAoriginal,AAfittest,fittest,fitness]=GAairfoil(genNo,p0,range)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%this function optimizes an airfoil shape based on the coeffecient of lift
%value
%genNo      number of generations to mate
%p0         Original airfoil to oprimize
%range      Randomizer range to vary the PARSEC parameters
%Npanel     number of panels for the fitness function

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%genetic parameters
[AAoriginal,~]=airenaca(p0);
popsize=40;  %population size
transprob=0.05;  %transcendence percentage 
crossprob=0.75;    %cross over percentage
mutprob=0.2;       %mutation percentage
newpop=[];
fitness=[];
for k=1:genNo
AA=[];
p=[];
%population evaluation (starting from the second generation)
for i=1:length(newpop)
    p1=newpop(i,:);
    [AAnew, ~]=airenaca(p1);  %fitness evaluation
    AA=[AA;AAnew];
    p=[p;p1];
end
%first population initialization
for i=1:popsize-length(newpop)
    p1=randp(p0,range);
    [AAnew, maxThickness]=airenaca(p1); %fitness evaluation
     %geometric constrain
    if maxThickness>0.12
        AAnew=AAoriginal;
    elseif maxThickness<0.01  
        AAnew=AAoriginal;
    end
    AA=[AA;AAnew];
    p=[p;p1];
end
pop=p;
%constraining the surface
for i=1:length(AA)
if AA(i)>=AAoriginal
        AA(i)=AAoriginal;
end
end
%sorting the individuals by the fittest
fitness=[fitness, max(AA./sum(AA))];

fi=AA./sum(AA);
[fittest,ind]=sort(fi,'ascend');
fittest=fittest(1:ceil(transprob*popsize));
ind=ind(1:ceil(transprob*popsize));
if k~=genNo
    newpop=pop(ind,:);
    %crossover
    for i=1:ceil(crossprob*popsize)
        indv1=randi([1,popsize],1);
        indv2=randi([1,popsize],1);
        crossindex=randi([1,11],1);
       newpop=[newpop;pop(indv1,1:crossindex) pop(indv2,crossindex+1:end)];
    end
    %mutation
    for i=1:ceil(mutprob*popsize)
        indv=pop(randi([1,popsize],1),:);
        mutindex=randi([1,11],1);
        pmut=randp(p0,range);
        indv(mutindex)=pmut(mutindex);
        newpop=[newpop;indv];
    end
end

end

%choosing the tournemnt winner or the most evolved individual
fittest=pop(ind(1),:);
AAfittest=AA(ind(1));
if AAfittest==AAoriginal
    fittest=p0;
end

x=[1:length(AA)];
%plotting the original airfoil vs. the optimized
plotairfoil(fittest,'k')
hold on
plotairfoil(p0,'r')
legend('Optimized','original')
xlabel('X/C')
ylabel('Y/C')
title('Airfoil shape')

end