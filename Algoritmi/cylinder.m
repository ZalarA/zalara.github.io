r=3;
u=linspace(0,10);
v=linspace(0,2*pi);
[U,V]=meshgrid(u,v);
x=r.*cos(U);
y=r.*sin(U);
z=V;
surf(x,y,z);
