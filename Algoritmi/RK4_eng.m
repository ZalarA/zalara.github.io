function [X,Y]=RK4eng(f,x0,y0,N,h)

% Runge-Kutta of order 4
% We are solving ODE of order 1
% Data:
%               f                       the right side of ODE
%               x0                      initial x coordinate
%               y0                      initital y coordinate
%               N                       number of steps
%               h                       step size
% Result:
%               Y                       approximating vector for the solution of ODE

x = x0;                          X = [x];
y = y0;                          Y = [y];
for i = 1:N
   k1 = h*f(x,y);
   k2 = h*f(x+h/2,y+k1/2);
   k3 = h*f(x+h/2,y+k2/2);
   k4 = h*f(x+h,y+k3);
   x = x+h;        X = [X x];
   y = y + (k1+k2+k2+k3+k3+k4)/6;       Y = [Y y];
end