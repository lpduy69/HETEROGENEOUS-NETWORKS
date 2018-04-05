function  [PCov] = ProbCov(tValues,betaConst,W*a^(-betaConst/2),numbMC,k);

%Simulation section
simNumb=10^4; %number of simulations
diskRadius=40; %radius of simulation disk region (has to be larger when fading is incorporated)
PCovSim=funSimLogNormProbCov(tValues,betaConst,K,lambda,sigma,W,diskRadius,simNumb,k);