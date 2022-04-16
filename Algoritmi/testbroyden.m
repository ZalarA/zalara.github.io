fprintf(['Resujemo sistem\n'...
    '   3*x(1) - cos(x(1)*x(2)) - 1.8=0,\n',...
    '   x(1)^2 - 81*(x(2)+0.1)^2 + sin(x(3)) + 1.1=0\n',...
    '   exp(-x(1)*x(2)) + 20*x(3) + 9.1=0\n'...
    'z uporabo Broydenove metode.\n\n'])

F=inline(strcat(...
   '[ 3*x(1) - cos(x(1)*x(2)) - 1.8;',...
   '  x(1)^2 - 81*(x(2)+0.1)^2 + sin(x(3)) + 1.1;',...
   '  exp(-x(1)*x(2)) + 20*x(3) + 9.1]'));
pause

fprintf(['Zacetni priblizek je x0=[0.4;0.1;-0.4].\n\n'])
x0=[0.4;0.1;-0.4];

pause



% Jacobijeva matrika (potrebujemo le za aproksimacijo na zacetku)

JF=inline(strcat(...
   '[ 3 + x(2)*sin(x(1)*x(2)), x(1)*sin(x(1)*x(2)),   0;',...    
   '  2*x(1),                  -162*(x(2)+0.1),       cos(x(3));',... 
   '  -x(2)*exp(-x(1)*x(2)),   -x(1)*exp(-x(1)*x(2)), 20]'));


disp('Toèna Jacobijeva matrika v zaèetni toèki.');
JF(x0)

pause

disp('Za približek vzamemo diag([3,-32,20]).')

pause
broyden(F,eye(3),[1;1;1]);