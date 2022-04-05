psi=linspace(-pi/2,pi/2);
varphi=linspace(0,2*pi);
[psi,varphi]=meshgrid(psi,varphi);
x=3.*cos(psi).*cos(varphi);
y=3.*cos(psi).*sin(varphi);
z=3.*sin(psi);
surf(x,y,z);

hold on
pause
psi=linspace(-pi/2,pi/2);
varphi=linspace(0,2*pi);
psi=pi/4-0.*varphi;
x=3.*cos(psi).*cos(varphi);
y=3.*cos(psi).*sin(varphi);
z=3.*sin(psi);
plot3(x,y,z,'r','LineWidth',3);

hold on
pause
psi=linspace(-pi/2,pi/2);
varphi=linspace(0,2*pi);
varphi=pi/4-0.*psi;
x=3.*cos(psi).*cos(varphi);
y=3.*cos(psi).*sin(varphi);
z=3.*sin(psi);
plot3(x,y,z,'g','LineWidth',3);