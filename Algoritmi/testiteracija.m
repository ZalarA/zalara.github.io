fprintf(['Primer reševanja enaèbe x-x^(1/3)-2=0 z interacijo g(x)=x^{1/3}+2 metodo, pri èemer,\n'...
            ' je zaèetni približek x0=3.'])

g=inline('x^(1/3)+2');
pause

iteracija(g,3)