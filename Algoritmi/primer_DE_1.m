f=@(x,y) (-y-1);
[X,Y]=euler(f,0,1,30,0.1);
x=0;
h=1/10;

disp(sprintf('Euler method'));
for i=0:10
  y=2*exp(-x)-1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, error: %15.15f',i,x,Y(i+1),Y(i+1)-y));
  x=x+h;
endfor
figure(1)
plot(X,Y,'r')
hold on 
Z=2*exp(-X)-1;
plot(X,Z,'b')
hold off 

disp(sprintf('Runge-Kutta metoda reda 4'));
figure(2)
[X,W]=RK4(f,0,1,30,0.1);
x=0;
for i=0:10
  y=2*exp(-x)-1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, error: %15.15f',i,x,W(i+1),W(i+1)-y));
  x=x+h;
endfor
plot(X,W)
hold on
Z = -1 + 2*exp(-X);
plot(X,Z)
hold off
