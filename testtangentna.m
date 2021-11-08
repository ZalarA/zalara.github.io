%Primer reševanja enaèbe x-x^(1/3)-2=0 s tangentno metodo, pri èemer
%je zaèetni približek x0=3.

f=inline('x-x^(1/3)-2');
fprime=inline('1-1/3*x^(-2/3)');

tangentna(f,fprime,3)