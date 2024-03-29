fprintf(['Z Jacobijevo metodo re�ujemo sistem\n\n'...
    '   3*x(1) - cos(x(1)*x(2)) - 3*0.6=0,\n'...
    '   x(1)^2 - 81*(x(2)+0.1)^2 + sin(x(3)) + 1.1=0,\n'...
    '   exp(-x(1)*x(2)) + 20*x(3) + 9.1=0.\n\n'])

pause

fprintf(['Iteracijska funkcija bo\n'...
    '   [1/3*(cos(x(1)*x(2)))+6/10,\n',... 
    '   1/9*sqrt(x(1)^2+sin(x(3))+1.1)-1/10,\n',...
    '   -1/20*(exp(-x(1)*x(2))+9.1)]\n\n'])

g=inline(strcat(...
  '[1/3*(cos(x(1)*x(2)))+6/10;',... 
  '1/9*sqrt(x(1)^2+sin(x(3))+1.1)-1/10;',...
  '-1/20*(exp(-x(1)*x(2))+9.1)]'));

pause

fprintf(['Zacetni priblizek je'])

x=[1;1;1]

pause

iteracija(g,[1;1;1])