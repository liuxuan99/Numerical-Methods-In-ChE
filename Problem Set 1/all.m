% Bisection Method
bis(0,pi/2,@(x)x*tan(x)-1,1e-4,100)
% Newton Method
newt(0.5,@(x)x*tan(x)-1,1e-4,100)
% Secant Method
seca(0.8,0.81,@(x)x*tan(x)-1,1e-4,100)