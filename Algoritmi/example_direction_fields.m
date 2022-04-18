close all
[X, Y] = meshgrid(-1.5:0.2:3, -exp(1.5):0.2:exp(1.5));
fprintf('Drawing the direction field for dy/dx=-y.\n\n')
pause
S=-Y;
L = sqrt(1 + S.^2);
figure(1)
hold on 
pause
quiver(X, Y, 1./L, S./L, 0.45)
%axis tight; xlabel('t'), ylabel('y')
title('Direction field for dy/dx = -y')
pause
fprintf('Plotting the solution y(x)=exp(-x).\n\n')
pause
X=linspace(-1.5,3);
Y=exp(-X);
plot(X,Y,'r')
pause
fprintf('Plotting the solution y(x)=-exp(-x).\n\n')
pause
X=linspace(-1.5,3);
Y=-exp(-X);
plot(X,Y,'g')
hold off
pause

fprintf('Drawing the direction field for dy/dx=2y.\n\n')
pause
[X, Y] = meshgrid(-1.5:0.2:1.5, -exp(1.5):0.2:exp(1.5));
S = 2*Y;
L = sqrt(1 + S.^2);
figure(2)
hold on
quiver(X, Y, 1./L, S./L, 0.45)
%axis tight; xlabel('t'), ylabel('y')
title('Direction field for dy/dx = 2y')
pause
fprintf('Plotting the solution y(x)=exp(2x).\n\n')
pause
X=linspace(-0.75,0.75);
Y=exp(2.*X);
plot(X,Y,'r')
pause
fprintf('Plotting the solution y(x)=-exp(2x).\n\n')
pause
X=linspace(-0.75,0.75);
Y=-exp(2.*X);
plot(X,Y,'g')
hold off

pause
fprintf('Drawing the direction field for dy/dx=y(1-y).\n\n')
pause
[T, Y] = meshgrid(-3:0.2:3, -3:0.2:3);
S = (Y.*(1-Y));
L = sqrt(1 + S.^2);
figure(3)
quiver(T, Y, 1./L, S./L, 0.45)
%axis tight; xlabel('t'), ylabel('y')
title('Direction field for dy/dx = y(1-y)')
hold on
x=-3:0.2:3;
pause
fprintf('Plotting the solution y(x)=1./(exp(-x)+1).\n\n')
pause
plot(x,1./(exp(-x)+1))
pause
fprintf('Plotting the solution y(x)=1./(2*exp(-x)+1).\n\n')
pause
plot(x,1./(2*exp(-x)+1))
pause
fprintf('Plotting the solution y(x)=1./(-exp(-x)+1).\n\n')
pause
x=0.1:0.2:3;
plot(x,1./(-1*exp(-x)+1))
pause
x=-3:0.2:-0.1;
plot(x,1./(-1*exp(-x)+1))
hold off