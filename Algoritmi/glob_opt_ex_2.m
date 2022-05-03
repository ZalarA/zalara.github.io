clear all
fprintf(['Searching a global minimum of the polynomial\n\n'...
    '   f(x(1),x(2))=x(1)^2*x(2)^2*(x(1)^2+x(2)^2-1)\n\n'...
    'using Lasserre relaxation with Gloptipoly.\n\n']) 

pause
fprintf(['It is easy to compute all four global minimizers'...
        'by computing stationary points:\n\n'...
        '   x(1)=+/- sqrt(3)/3, x(2)=+/- sqrt(3)/3.\n\n'])
pause

fprintf(['However, gloptipoly does not give exact solution:\n\n'])
pause

mpol x 2

f=x(1)^2*x(2)^2*(x(1)^2+x(2)^2-1);

P=msdp(min(f));
[status,object]=msol(P)

pause
fprintf(['If we do a small perturbation for the polynomial\n\n'...
    '  epsilon*(x(1)^(10)+x(2)^(10)) with epsilon=0.001,\n\n '...
    '  we get good aproximations of the minimizers:\n\n'])

pause
epsilon=10^(-3);
f=x(1)^2*x(2)^2*(x(1)^2+x(2)^2-1)+epsilon*(x(1)^(10)+x(2)^(10));

P=msdp(min(f));
[status,object]=msol(P)
double(meas)
