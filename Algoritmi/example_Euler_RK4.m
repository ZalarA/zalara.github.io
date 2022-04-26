%direction field for dy/dx=-y-1
[T, Y] = meshgrid(0:0.2:3, -1:0.2:2);
S = (-Y - 1);
L = sqrt(1 + S.^2);
figure(1)
quiver(T, Y, 1./L, S./L, 0.45)
%axis tight; xlabel('t'), ylabel('y')
title('Direction field for dy/dx = -y-1')

%solving dy/dx=-y-1 by Euler's method
f=@(x,y) (-y-1);
[X,Y]=euler(f,0,1,30,0.1);
x=0;
h=1/10;

disp(sprintf('Euler method'));
for i=0:10
  y=2*exp(-x)-1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, error: %15.15f',i,x,Y(i+1),Y(i+1)-y));
  x=x+h;
end
figure(2)
plot(X,Y,'r')
title('Euler method (red), exact solution (blue) of dy/dx=-y-1')
hold on 
Z=2*exp(-X)-1;
plot(X,Z,'b')
hold off
figure(3)
plot(X,Y-Z)
title('Global errors of Euler method for solving dy/dx=-y-1')


%solving dy/dx=-y-1 by Runge-Kutta of order 4 method
disp(sprintf('Runge-Kutta method of order 4'));
[X,Y]=RK4eng(f,0,1,30,0.1);
x=0;
h=1/10;
for i=0:10
  y=2*exp(-x)-1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, error: %15.15f',i,x,Y(i+1),Y(i+1)-y));
  x=x+h;
end
figure(4)
plot(X,Y,'r')
title('RK4 method (red), exact solution (blue) of dy/dx=-y-1')
hold on 
Z=2*exp(-X)-1;
plot(X,Z,'b')
hold off
figure(5)
plot(X,Y-Z)
title('Global errors of RK4 method for solving dy/dx=-y-1')



