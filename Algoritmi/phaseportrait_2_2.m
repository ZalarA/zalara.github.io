close all
fprintf(['Phase portrait for\n\n',...
         '   C1*exp(it)*([1;0]+i[0;1])+C2*exp(-it)*([1;0]-i[0;1]).\n\n'])
pause
[X, Y] = meshgrid(-5:0.2:5, -5:0.2:5);
S = (Y);
T=  (-X);
L = sqrt(S.^2 + T.^2);
figure(1)
quiver(X, Y, S./L, T./L, 0.45)
hold on
title('Phase portrait for C1*exp(it)*([1;0]+i[0;1])+C2*exp(-it)*([1;0]-i[0;1]).')
T=linspace(-10,10,200);
C1=2;C2=1/2;
X=((C1*cos(T)+C2*sin(T))*1+(-C1*sin(T)+C2*cos(T))*0);
Y=((C1*cos(T)+C2*sin(T))*0+(-C1*sin(T)+C2*cos(T))*1);
plot(X,Y,'r','linewidth',4)
hold on
C1=1/2;C2=-1;
X=((C1*cos(T)+C2*sin(T))*1+(-C1*sin(T)+C2*cos(T))*0);
Y=((C1*cos(T)+C2*sin(T))*0+(-C1*sin(T)+C2*cos(T))*1);
plot(X,Y,'b','linewidth',3)
C1=-1;C2=4;
X=((C1*cos(T)+C2*sin(T))*1+(-C1*sin(T)+C2*cos(T))*0);
Y=((C1*cos(T)+C2*sin(T))*0+(-C1*sin(T)+C2*cos(T))*1);
plot(X,Y,'g','linewidth',3)
C1=0.3;C2=0;
X=((C1*cos(T)+C2*sin(T))*1+(-C1*sin(T)+C2*cos(T))*0);
Y=((C1*cos(T)+C2*sin(T))*0+(-C1*sin(T)+C2*cos(T))*1);
plot(X,Y,'y','linewidth',3)
hold off
