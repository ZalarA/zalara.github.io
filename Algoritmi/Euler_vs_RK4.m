close all
clear all
fprintf(['We compare Eulers method vs Runge Kutta 4\n'...
    'for solving the DE\n',...
    '   dy/dx=-y-1, y(0)=1\n',...
    'on the interval [0,3] with step size 0.1.\n\n'])
pause
fprintf('First we plot the direction field.\n\n')
pause
[T, Y] = meshgrid(0:0.2:3, -1:0.2:2);
S = (-Y - 1);
L = sqrt(1 + S.^2);
figure(1)
quiver(T, Y, 1./L, S./L, 0.45)
%axis tight; xlabel('t'), ylabel('y')
title('Direction field for dy/dx = -y-1')
pause

fprintf('\n Solution using Euler method.\n\n')
pause
f=@(x,y) (-y-1);
[X,Y]=euler_eng(f,0,1,30,0.1);
x=0;
h=1/10;

for i=0:30
  y=2*exp(-x)-1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, error: %15.15f',i,x,Y(i+1),Y(i+1)-y));
  x=x+h;
end
pause
figure(2)
plot(X,Y,'r')
title('Euler method (red), exact solution (blue) of dy/dx=-y-1')
hold on 
Z=2*exp(-X)-1;
plot(X,Z,'b')
hold off
pause
figure(3)
plot(X,Y-Z)
title('Global errors of Euler method for solving dy/dx=-y-1')

fprintf('\n Solution using Runge-Kutta method of order 4.\n\n')
pause
[X,Y]=RK4_eng(f,0,1,30,0.1);
x=0;
h=1/10;
for i=0:30
  y=2*exp(-x)-1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, error: %15.15f',i,x,Y(i+1),Y(i+1)-y));
  x=x+h;
end
pause
figure(4)
plot(X,Y,'r')
title('RK4 method (red), exact solution (blue) of dy/dx=-y-1')
hold on 
Z=2*exp(-X)-1;
plot(X,Z,'b')
hold off
pause
figure(5)
plot(X,Y-Z)
title('Global errors of RK4 method for solving dy/dx=-y-1')



