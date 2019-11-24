# Airfoil-optimization
With MATLAB, we want to optimize the surface of an airfoil using Reinforcement learning by genetic algorithms. The project still on progress.

First step: Generating and parametrizing the initial airfoil, NACA 2412. The resulting points will be memorized as 4 Vectors (size of each one=1x100). These 4 vectors represent the initial global vector, where the optimization starts. (See the file generatenaca2412.m).

In order to have a general algorithm, I thought of doing some modifications in order to generate any NACA airfoil using only its 4 digits representation. This time we will be able to parameterize any airfoil automatically by inserting only 4 digits. This work is gathered in the folder Airfoil Parameterizer App.

## Airfoil Parameterizer App

Using MATLAB GUI, I created an platforme that plot and generate the control points of the cross sectionnal surface of the NACA airfoil. You will find the scripts used in the folder titled "Airfoil Parameterizer App". This application allows to anyone to generate the form of the cross sectionnal surface of the airfoil using only the NACA 4-digits representation.

This is an example of how it looks and what it does

![alt text](https://i.ibb.co/tsFh89P/Capture-d-e-cran-2019-04-12-a-18-11-51.png)
