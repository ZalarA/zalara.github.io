%Primer reševanja enaèbe x+log(x)=0 z interacijo g(x)=-log(x) metodo, pri èemer
%je zaèetni približek x0=0.1.

g=inline('(-log(x)+x)/2');

iteracija(g,0.1)