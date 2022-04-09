fprintf(['Primer reševanja enaèbe x^2+ln(x)=0 z interacijskimi funkcijami\n'...
        'g1(x)=e^(-x^2)\n'...
        'g2(x)=1/2(x+e^(-x^2))\n'...
        'g3(x)=(2x^3+e^(-x^2))/(1+2x^2)\n'...
        'in zaèetnim priblikom x0=1/2.'])

g1=inline('exp(-x^2)');
g2=inline('1/2*(x+exp(-x^2))');
g3=inline('(2*x^3+exp(-x^2))/(1+2*x^2)');

pause
iteracija(g1,1/2)
pause
iteracija(g2,1/2)
pause
iteracija(g3,1/2)

