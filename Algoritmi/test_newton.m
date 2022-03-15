%Solving the equation x-x^(1/3)-2=0 with Newton method and initial
%approximation x0=3.

f=inline('x-x^(1/3)-2');
fprime=inline('1-1/3*x^(-2/3)');

newton(f,fprime,3)