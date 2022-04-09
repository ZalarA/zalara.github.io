x0=[0.4;0.1;-0.4];

F=inline(strcat(...
   '[ 3*x(1) - cos(x(1)*x(2)) - 1.8;',...
   '  x(1)^2 - 81*(x(2)+0.1)^2 + sin(x(3)) + 1.1;',...
   '  exp(-x(1)*x(2)) + 20*x(3) + 9.1]'));

% Jacobijeva matrika (potrebujemo le za aproksimacijo na zacetku)

JF=inline(strcat(...
   '[ 3 + x(2)*sin(x(1)*x(2)), x(1)*sin(x(1)*x(2)),   0;',...    
   '  2*x(1),                  -162*(x(2)+0.1),       cos(x(3));',... 
   '  -x(2)*exp(-x(1)*x(2)),   -x(1)*exp(-x(1)*x(2)), 20]'));


disp('Toèna Jacobijeva matrika v zaèetni toèki');
JF(x0)
disp('Za približek vzamemo diag([3,-32,20])')

% Pri Broydenovi metodi na zacetku potrebujemo aproksimacijo Jacobijeve
% matrike 

broyden(F,diag([3,-32,20]),[1;1;1]);