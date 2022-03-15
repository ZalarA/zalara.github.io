%curves for plotting
f = @(x,y) x.^2 + y.^2 - 10*x+y-1;
g = @(x,y) x.^2 - y.^2 - x + 10*y-25;
fimplicit(f,[-4 12])
hold on
fimplicit(g,[-4 12])
hold off

F=inline('[ x(1)^2+x(2)^2-10*x(1)+x(2)-1; x(1)^2-x(2)^2-x(1)+10*x(2)-25]');

% Jacobi matrix

JF=inline('[ 2*x(1)-10, 2*x(2)+1 ; 2*x(1)-1, -2*x(2)+10]');

%we are searching for both intersections
%newtonsys(F,JF,[2;4]);
newtonsys(F,JF,[8;-3]);
%snewtonsys(F,JF,[50;-32]);

