%Comparison of different methods (Newton, Broyden, gradient descent, combination)
%for the microwave oven example from slides.

F=inline('[ x(1)/((1+sqrt(x(2)^2+x(3)^2)))-0.27; x(1)/(1+sqrt((1-x(2))^2+(1-x(3))^2))-0.36; x(1)/(1+sqrt(x(2)^2+(2-x(3))^2))-0.3]');

% Jacobi matrix

JF=inline(strcat(...
  '[ 1/(1+sqrt(x(2)^2+x(3)^2)), -x(1)*x(2)/(1+sqrt(x(2)^2+x(3)^2))^2/sqrt(x(2)^2+x(3)^2),-x(1)*x(3)/(1+sqrt(x(2)^2+x(3)^2))^2/sqrt(x(2)^2+x(3)^2 );',...
  ' 1/(1+sqrt((1-x(2))^2+(1-x(3))^2)), x(1)*x(2)/(1+sqrt((1-x(2))^2+(1-x(3))^2))^2/sqrt((1-x(2))^2+(1-x(3))^2),x(1)*x(3)/(1+sqrt((1-x(2))^2+(1-x(3))^2))^2/sqrt((1-x(2))^2+(1-x(3))^2 );',...
  '1/(1+sqrt(x(2)^2+(2-x(3))^2)), -x(1)*x(2)/(1+sqrt(x(2)^2+(2-x(3))^2))^2/sqrt(x(2)^2+(2-x(3))^2),x(1)*x(3)/(1+sqrt(x(2)^2+(2-x(3))^2))^2/sqrt(x(2)^2+(2-x(3))^2 )]'));

x0=[0.8;0.8;0.8];
disp(sprintf('Newton metod with x0=[%3.1f, %3.1f,%3.1f].',x0(1),x0(2),x0(3)))
pause()
x1=newtonsys(F,JF,x0);
pause()
B0=eye(3);
disp(sprintf('Broyden metod with x0=[%3.1f, %3.1f,%3.1f] and',x0(1),x0(2),x0(3)))
B0
pause()
x1=broyden(F,B0,x0);
pause()
B0=JF(x0);
disp(sprintf('Broyden metod with x0=[%3.1f, %3.1f,%3.1f] and',x0(1),x0(2),x0(3)))
B0
pause()
x1=broyden(F,B0,x0);
pause()
clear x
g=inline('( x(1)/(1+sqrt(x(2)^2+x(3)^2))-0.27)^2+ (x(1)/(1+sqrt((1-x(2))^2+(1-x(3))^2))-0.36)^2+(x(1)/(1+sqrt(x(2)^2+(2-x(3))^2))-0.3)^2');
gradg=inline(strcat('[2*(x(1)/(1+sqrt(x(2)^2+x(3)^2))-0.27)*1/(1+sqrt(x(2)^2+x(3)^2))+2*(x(1)/(1+sqrt((1-x(2))^2+(1-x(3))^2))-0.36)*1/(1+sqrt((1-x(2))^2+(1-x(3))^2))+2*(x(1)/(1+sqrt(x(2)^2+(2-x(3))^2))-0.3)*1/(1+sqrt(x(2)^2+(2-x(3))^2));',...
            ' 2*(x(1)/(1+sqrt(x(2)^2+x(3)^2))-0.27)*( -x(1)*x(2)/(1+sqrt(x(2)^2+x(3)^2))^2/sqrt(x(2)^2+x(3)^2))+2*(x(1)/(1+sqrt((1-x(2))^2+(1-x(3))^2))-0.36)*x(1)*x(2)/(1+sqrt((1-x(2))^2+(1-x(3))^2))^2/sqrt((1-x(2))^2+(1-x(3))^2)+2*(x(1)/(1+sqrt(x(2)^2+(2-x(3))^2))-0.3)*(-x(1)*x(2)/(1+sqrt(x(2)^2+(2-x(3))^2))^2/sqrt(x(2)^2+(2-x(3))^2));',...
            ' 2*(x(1)/(1+sqrt(x(2)^2+x(3)^2))-0.27)*(-x(1)*x(3)/(1+sqrt(x(2)^2+x(3)^2))^2/sqrt(x(2)^2+x(3)^2))+2*(x(1)/(1+sqrt((1-x(2))^2+(1-x(3))^2))-0.36)*x(1)*x(3)/(1+sqrt((1-x(2))^2+(1-x(3))^2))^2/sqrt((1-x(2))^2+(1-x(3))^2 )+2*(x(1)/(1+sqrt(x(2)^2+(2-x(3))^2))-0.3)*x(1)*x(3)/(1+sqrt(x(2)^2+(2-x(3))^2))^2/sqrt(x(2)^2+(2-x(3)))^2]'));
disp(sprintf('Gradient descent metod with x0=[%3.1f, %3.1f,%3.1f].',x0(1),x0(2),x0(3)))
pause()
x=gradient_descent(g,gradg,x0)  
pause()           
x0=[3;3;3];
disp(sprintf('Newton metod with x0=[%3.1f, %3.1f,%3.1f].',x0(1),x0(2),x0(3)))
pause()
x1=newtonsys(F,JF,x0);
pause()
disp(sprintf('Gradient descent metod with x0=[%3.1f, %3.1f,%3.1f].',x0(1),x0(2),x0(3)))
pause()
x0=gradient_descent(g,gradg,x0)       
pause()
disp(sprintf('Newton metod with x0=[%3.1f, %3.1f,%3.1f].',x0(1),x0(2),x0(3)))
pause()
x1=newtonsys(F,JF,x0);      
