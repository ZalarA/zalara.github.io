function [X,Y]=euler_eng(f,x0,y0,N,h)

% Euler method
% We are solving ODE of order 1
% Data:
%               f                       the right side of ODE
%               x0                      initial x coordinate
%               y0                      initital y coordinate
%               N                       number of steps
%               h                       step size
% Result:
%               Y                       approximating vector for the solution of ODE

x = x0; 
y = y0;
Y = y; 
X = x;

for i = 1:N
   y = y + h*f(x,y);
   x = x+h;
   Y = [Y y];
   X = [X x];
end