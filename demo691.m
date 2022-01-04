% Strelska metoda - uporaba algoritma 6.9.1

m = 20;
epsilon = 1e-5;
alpha0 = 1;
alpha1 = 2;
x0 = 0;
y0= 1;
b = 1;
B = exp(-1);
N = 100;
h = (b - x0)/N;
X = [x0:h:b];


[alpha,Y]=strelska( @(x,y)([y(1) - 2*y(2) - 2*exp(-x) + 2
        2*y(1) - y(2) - 2*exp(-x) + 1]),x0,y0,b,B,alpha0,alpha1,N,h,epsilon,m)