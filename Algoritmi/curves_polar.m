t=linspace(0,2*pi);
r=1-sin(t);
x=r.*cos(t); y=r.*sin(t);
plot(x,y)

figure(2)
t=linspace(0,2*pi,1000)
r=(sin((t-pi)./12)).^5+exp(sin(t))-2.*cos(4.*t);
x=r.*cos(t); y=r.*sin(t);
plot(x,y)

figure(3)
clear all
t=linspace(0.1*pi,8*pi,1000)
r=t.^(-1);
x=r.*cos(t); y=r.*sin(t);
plot(x,y)

figure(4)
clear all
t=linspace(0,2*pi);
r=cos(3.*t)./2;
x=r.*cos(t); y=r.*sin(t);
plot(x,y)