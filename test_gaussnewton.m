F=inline('[2-x(1)*exp(x(2)*0);0.7-x(1)*exp(x(2)*1);0.3-x(1)*exp(x(2)*2);0.1-x(1)*exp(x(2)*3)]');

% Jacobi matrix

JF=inline('[-exp(x(2)*0),-x(1)*exp(x(2)*0)*x(2);-exp(x(2)*1),-x(1)*exp(x(2)*1)*x(2);-exp(x(2)*2),-x(1)*exp(x(2)*2)*x(2);-exp(x(2)*3),-x(1)*exp(x(2)*3)*x(2)]');

%s=gaussnewton(F,JF,[1.1;1.1]);
%s=gaussnewton(F,JF,[-1.1;-1.1]);
%s=gaussnewton(F,JF,[1.1;-1.1]);
s=gaussnewton(F,JF,[2;-3]);
%s=gaussnewton(F,JF,[-1.1;1.1]);

x=[0 1 2 3]; y=[2 0.7 0.3 0.1];
plot(x,y,'o')
hold on
a=s(1); b=s(2);
x=linspace(-1,4); y=a*exp(b*x);
plot(x,y)
hold off

%f=@(x,y) (2-x.*exp(y.*0)).^2+(0.7-x.*exp(y.*1)).^2+(0.3-x.*exp(y.*2)).^2+(0.1-x.*exp(y.*3)).^2
%[x,y]=meshgrid(1:0.05:1.1,1:0.05:1.1)
%z = f(x,y);
%surf(x,y,z)

%[x,y]=meshgrid(0.95:0.005:1.05,0.95:0.005:1.05)
%z = f(x,y);
%surf(x,y,z)