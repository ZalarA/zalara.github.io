x=linspace(0,2);
y=x;
[X,Y]=meshgrid(x,y);
f=1-(X-1).^2-(Y-1).^2;
surf(X,Y,f);
hold on
z=linspace(-1,1);
[Y1,Z1]=meshgrid(y,z);
g=1.5-0*Y1;
pause
surf(g,Y1,Z1);
[X2,Z2]=meshgrid(x,z);
h=0.5-0*X2;
pause
surf(X2,h,Z2)
hold off
figure(2)
pause
surf(X,Y,f)
hold on
pause
y=linspace(0,2)
x=1.5-0.*y;
z=1-(1-x).^2-(y-1).^2;
plot3(x,y,z,'r','LineWidth',3);
hold on
pause
x=linspace(0,2)
y=0.5-0.*x;
z=1-(1-x).^2-(y-1).^2;
plot3(x,y,z,'g','LineWidth',3);