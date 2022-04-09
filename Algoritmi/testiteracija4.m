fprintf(['Primer reševanja enaèbe x+log(x)=0 z interacijo g(x)=-log(x) metodo, pri èemer \n'...
'je zaèetni približek x0=0.1.\n\n'])

g=inline('(-log(x)+x)/2');
pause

iteracija(g,0.1)