close all
clear all
fprintf(['Phase portrait for predator-prey example:\n\n'...
      '  Rdot=0.3*R-0.004*R*F, Fdot=-0.2F+0.001*R*F.\n\n'])
pause
R=200;F=75;
[X, Y] = meshgrid(R-50:1:R+50, F-30:1:F+30);
S = (-0.004*200*(Y-F));
T=  (0.001*75*(X-R));
L = sqrt(S.^2 + T.^2);
figure(1)
quiver(X, Y, S./L, T./L, 0.45)
hold on
[V,D]=eig([0 -0.004*200;0.001*75 0]);
title('Phase portrait for predator-prey example).')
T=abs(D(1,1))*linspace(0,30,200);
C1=20;C2=1;
u=real(V(:,1)); w=imag(V(:,1));
X=((C1*cos(T)+C2*sin(T))*u(1)+(-C1*sin(T)+C2*cos(T))*w(1))+200;
Y=((C1*cos(T)+C2*sin(T))*u(2)+(-C1*sin(T)+C2*cos(T))*w(2))+75;
plot(X,Y,'r','linewidth',4)
hold on
C1=10;C2=20;
X=((C1*cos(T)+C2*sin(T))*u(1)+(-C1*sin(T)+C2*cos(T))*w(1))+200;
Y=((C1*cos(T)+C2*sin(T))*u(2)+(-C1*sin(T)+C2*cos(T))*w(2))+75;
plot(X,Y,'b','linewidth',3)
C1=-1;C2=4;
X=((C1*cos(T)+C2*sin(T))*u(1)+(-C1*sin(T)+C2*cos(T))*w(1))+200;
Y=((C1*cos(T)+C2*sin(T))*u(2)+(-C1*sin(T)+C2*cos(T))*w(2))+75;
plot(X,Y,'g','linewidth',3)
C1=-1;C2=0;
X=((C1*cos(T)+C2*sin(T))*u(1)+(-C1*sin(T)+C2*cos(T))*w(1))+200;
Y=((C1*cos(T)+C2*sin(T))*u(2)+(-C1*sin(T)+C2*cos(T))*w(2))+75;
plot(X,Y,'y','linewidth',3)
hold off
