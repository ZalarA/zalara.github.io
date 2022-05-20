close all
fprintf(['Phase portrait for\n\n',...
         '   C1*exp(4*T)[1,1]^T+C2*exp(-2*T)[-1,1]^T.\n\n'])
pause
[X, Y] = meshgrid(-10:0.5:10, -10:0.5:10);
S = (X+3*Y);
T=  (3*X+Y);
L = sqrt(S.^2 + T.^2);
figure(1)
quiver(X, Y, S./L, T./L, 0.45)
hold on
title('Phase portrait C1*exp(4*T)[1,1]^T+C2*exp(-2*T)[-1,1]^T')
T=linspace(-1,0.5);
C1=1;C2=1;
X=C1*exp(4*T)-C2*exp(-2*T);
Y=C1*exp(4*T)+C2*exp(-2*T);
plot(X,Y,'r','linewidth',4)
hold on
C1=1;C2=-1;
X=C1*exp(4*T)-C2*exp(-2*T);
Y=C1*exp(4*T)+C2*exp(-2*T);
plot(X,Y,'b','linewidth',4)
C1=-1;C2=-1;
X=C1*exp(4*T)-C2*exp(-2*T);
Y=C1*exp(4*T)+C2*exp(-2*T);
plot(X,Y,'m','linewidth',4)
C1=-1;C2=1;
X=C1*exp(4*T)-C2*exp(-2*T);
Y=C1*exp(4*T)+C2*exp(-2*T);
plot(X,Y,'g','linewidth',4)
C1=1;C2=0;
X=C1*exp(4*T)-C2*exp(-2*T);
Y=C1*exp(4*T)+C2*exp(-2*T);
plot(X,Y,'y','linewidth',4)
C1=-1;C2=0;
X=C1*exp(4*T)-C2*exp(-2*T);
Y=C1*exp(4*T)+C2*exp(-2*T);
plot(X,Y,'y--','linewidth',3)
T=linspace(-1,2);
C1=0;C2=1;
X=C1*exp(4*T)-C2*exp(-2*T);
Y=C1*exp(4*T)+C2*exp(-2*T);
plot(X,Y,'k','linewidth',3)
C1=0;C2=-1;
X=C1*exp(4*T)-C2*exp(-2*T);
Y=C1*exp(4*T)+C2*exp(-2*T);
plot(X,Y,'k--','linewidth',3)
legend('direction field','exp(-4*T)[1;1]+exp(-2*T)[-1;1]',...
  'exp(-4*T)[1;1]-exp(-2*T)[-1;1]',...
  '-exp(-4*T)[1;1]-exp(-2*T)[-1;1]',...
  '-exp(-4*T)[1;1]+exp(-2*T)[-1;1]',...
  'exp(-4*T)[1;1]',...
  '-exp(-4*T)[1;1]',...
  'exp(-2*T)[-1;1]',...
  '-exp(-2*T)[1;1]','location','northwest')
hold off
