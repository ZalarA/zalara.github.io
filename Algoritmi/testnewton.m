fprintf(['Z Newtonovo metodo rešujemo sistem\n\n'...
    '3*x(1) - cos(x(1)*x(2)) - 3*0.6=0,\n'...
    'x(1)^2 - 81*(x(2)+0.1)^2 + sin(x(3)) + 1.1=0,\n'...
    'exp(-x(1)*x(2)) + 20*x(3) + 9.1=0.\n\n'])

%sistem

F=inline(strcat(...
   '[ 3*x(1) - cos(x(1)*x(2)) - 3*0.6;',...
   '  x(1)^2 - 81*(x(2)+0.1)^2 + sin(x(3)) + 1.1;',...
   '  exp(-x(1)*x(2)) + 20*x(3) + 9.1]'));

pause

fprintf(['Izraèunati moramo Jacobijevo matriko:\n'...
        '[ 3 + x(2)*sin(x(1)*x(2)), x(1)*sin(x(1)*x(2)),   0;\n',...    
        '  2*x(1),                  -162*(x(2)+0.1),       cos(x(3));\n',... 
        '  -x(2)*exp(-x(1)*x(2)),   -x(1)*exp(-x(1)*x(2)), 20]\n\n']);

% Jacobijeva matrika

JF=inline(strcat(...
   '[ 3 + x(2)*sin(x(1)*x(2)), x(1)*sin(x(1)*x(2)),   0;',...    
   '  2*x(1),                  -162*(x(2)+0.1),       cos(x(3));',... 
   '  -x(2)*exp(-x(1)*x(2)),   -x(1)*exp(-x(1)*x(2)), 20]'));    
    
pause
fprintf('Rešujemo sistem z zaèetnim približkom [1;1;1]:\n\n')

pause
newtonsis(F,JF,[1;1;1]);

pause
fprintf('\n\n Rešujemo sistem z nakljuènim zaèetnim približkom rand(3,1):\n\n')

pause
newtonsis(F,JF,rand(3,1));

pause
fprintf('\n\n Rešujemo sistem z zaèetnim približkom [-1;-7;-3]:\n\n')

pause
newtonsis(F,JF,[-1;-7;-3]);