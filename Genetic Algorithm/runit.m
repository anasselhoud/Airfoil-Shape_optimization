%initial individual
%p0=[0.0155 0.296632 0.060015 -0.4515 0.296632 -0.06055 0.453 0 0.001260 0 7.36]; %%NACA 0012
%p0=[0.0216 0.3445 0.07912 -0.6448 0.17 -0.033797 0.6748 0 0 0 0];  %%NACA 2412
p0=[0.015 0.4 0.08 0.08 0.2736 -0.04 0.4 0 0 0 0];  %%NACA 2412
range=[0.0015 0.025 0.015 0.01 0.02 0.015 0.075 0 0 0.175 0.05];
%range=[0.02 0.023 0.32 0.37 0.077 0.08 -0.63 -0.65 0.15 0.19 -0.02 -0.05 0.6 0.75 0 0 0 0 -4.55 -4.9 15 15.1];
%Solver parameters
%Npanel=200;
genNo=100;       %number of generations
%Genetic solution
[AAoriginal,AAfittest,fittest,fitness]=GAairfoil(genNo,p0,range);
%ploting and graphing
fprintf(' Original   Surf= %f \n Optimized  Surf= %f \n',AAoriginal,AAfittest)
axis('equal')
legend('Optimized','original')
