u=linspace(0,1/2);
v=linspace(0,4*pi);
[U,V]=meshgrid(u,v);
X=U.*cos(V);Y=U.*sin(V);Z=V;
surf(X,Y,Z);

hold on
u=1/4-0.*v;
x=u.*cos(v);y=u.*sin(v);z=v;
pause
plot3(x,y,z,'r','LineWidth',3)

hold on
u=linspace(0,1/2);
v=pi-0.*u;
x=u.*cos(v);y=u.*sin(v);z=v;
pause
plot3(x,y,z,'g','LineWidth',3)

