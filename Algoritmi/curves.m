%curve (handouts 8)

t=linspace(-3*pi/4,3*pi/4,100);
x=t.*cos(t);
y=t.*sin(t);
figure(1)
plot(x,y)
axis normal

%curve (handouts 9)

t=linspace(0,4*pi,1000000);
x=cos(t.^3);
y=sin(t.^3);
z=t./5;

figure(2)
plot(x,y)
pbaspect([1 1])
grid on
figure(3)
plot3(x,y,z)
pbaspect([1 1 1])
grid on


%curve (handouts 10)

t=linspace(0,2*pi);
x=2*cos(t);
y=2*sin(t);
figure(4)
plot(x,y)

%curve (handouts 11)
%t=linspace(-10,10);
t=linspace(-2,2);
x=t.^3-2*t;
y=t.^2-t;
figure(5)
plot(x,y)

%curve (handouts 16)
t=linspace(-10,10);
x=t.+sin(3*t);
y=t.+cos(5*t);
figure(6)
plot(x,y)

t=linspace(0,10*pi,10000);
figure(7)
x=1/10*(t.-sin(t));
y=1/10*(1-cos(t));
plot(x,y)
pbaspect([10 1])

t=linspace(-1.5,1.5);
figure(8)
x=t.^2-1;
y=-t.^3-t.^2+t+1;
plot(x,y)
hold on
x=t.-1;
y=1-t.^2;
plot(x,y,'g')
hold off