# Airfoil-optimization
We optimize the surface and aerodynamic performence of an airfoil using reinforcement learning, genetic algorithms. 

We start by generating and parametrizing the initial airfoil, NACA 2412. The resulting points will be memorized as 4 Vectors (size of each one=1x100). These 4 vectors represent the initial global vector, where the optimization starts. (See the file generatenaca2412.m).

The basic idea behind the genetic algorithms approach is tosearch for optimal solutions using an analogy to Darwin’s theory of evolution "Survivalof the ﬁttest". During solution iteration, decision variables or genes are manipulated usingvarious genetic operators (selection, crossover and mutation) to create a new generation. The method consists in using a population of individuals, each individual being a designvector, and in simulating evolution by selection with this population. Starting from aninitial population drawn randomly in the research space, the solution is evolved using thevarious genetic operators of the algorithm.

# Brief description of the files


- GAairfoil.m : this is the main script of the genetic algorithm. It contains all the genetic operations that produce the evolution of individuals until getting the optimal solution.
- randp.m : this function is called inside the GAairfoil script. It helps in generating newpopulation via mutation and crossover, by giving pseudo-random numbers in a speciﬁcrange of values.
- parsec.m : this function is also called inside the GAairfoil script. It helps in generatingthe parsec coeﬃcients for the airfoil parametrization based on parsec parameters.
- yCoord2.m : this function takes the parsec parameters and the output of parsec.m func-tion and transforms them into X and Y coordinates, ready to plot and visualize.
- plotairfoil.m : this function calls the yCoord2.m function in order to plot the airfoilbased on the output coordinates.
-airenaca.m: this function calculates the area value for each input airfoil.
- runit.m : this is the main script of the optimization. We set the initial airfoil, and runthe genetic algorithm and other instructions

# Summarized result
![alt text](https://svgshare.com/i/GPo.svg)

# Add: Airfoil Parameterizer and Generator App

Using MATLAB GUI, I created a platforme that plot and generate the control points of the cross sectionnal surface of the NACA airfoil. You will find the scripts used in the folder titled "Airfoil Parameterizer App". This application allows to anyone to generate the form of the cross sectionnal surface of the airfoil using only the NACA 4-digits representation.

This is an example of how it looks and what it does

![alt text](https://i.ibb.co/tsFh89P/Capture-d-e-cran-2019-04-12-a-18-11-51.png)
