close all
fprintf(['Phase portrait for\n\n',...
         '   C1*exp(-2+it)*([2;1]+i[0;1])+C2*exp(-2-it)*([2;1]-i[0;1]).\n\n'])
pause
[X, Y] = meshgrid(-30:30, -30:30);
S = (-3*X+2*Y);
T=  (-X-Y);
L = sqrt(S.^2 + T.^2);
figure(1)
quiver(X, Y, S./L, T./L, 0.45)
hold on
title('Phase portrait for C1*exp(-2+it)*([2;1]+i[0;1])+C2*exp(-2-it)*([2;1]-i[0;1]).')
T=linspace(-0.5,3);
alpha=-2;beta=1;
C1=1;C2=10;
X=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*2+(-C1*sin(beta*T)+C2*cos(beta*T)*0));
Y=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*1+(-C1*sin(beta*T)+C2*cos(beta*T)*1));
plot(X,Y,'r','linewidth',4)
hold on
C1=1;C2=-10;
X=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*2+(-C1*sin(beta*T)+C2*cos(beta*T)*0));
Y=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*1+(-C1*sin(beta*T)+C2*cos(beta*T)*1));
plot(X,Y,'b','linewidth',4)
C1=-1;C2=-10;
X=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*2+(-C1*sin(beta*T)+C2*cos(beta*T)*0));
Y=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*1+(-C1*sin(beta*T)+C2*cos(beta*T)*1));
plot(X,Y,'m','linewidth',4)
C1=-1;C2=10;
X=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*2+(-C1*sin(beta*T)+C2*cos(beta*T)*0));
Y=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*1+(-C1*sin(beta*T)+C2*cos(beta*T)*1));
plot(X,Y,'g','linewidth',4)
T=linspace(-1.2,1.2);
C1=1;C2=0;
X=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*2+(-C1*sin(beta*T)+C2*cos(beta*T)*0));
Y=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*1+(-C1*sin(beta*T)+C2*cos(beta*T)*1));
plot(X,Y,'y','linewidth',4)
C1=-1;C2=0;
X=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*2+(-C1*sin(beta*T)+C2*cos(beta*T)*0));
Y=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*1+(-C1*sin(beta*T)+C2*cos(beta*T)*1));
plot(X,Y,'y--','linewidth',4)
C1=0;C2=1;
X=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*2+(-C1*sin(beta*T)+C2*cos(beta*T)*0));
Y=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*1+(-C1*sin(beta*T)+C2*cos(beta*T)*1));
plot(X,Y,'k','linewidth',4)
C1=0;C2=-1;
X=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*2+(-C1*sin(beta*T)+C2*cos(beta*T)*0));
Y=exp(alpha*T).*((C1*cos(beta*T)+C2*sin(beta*T))*1+(-C1*sin(beta*T)+C2*cos(beta*T)*1));
plot(X,Y,'k--','linewidth',4)
hold off
