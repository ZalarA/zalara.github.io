%Primer reševanja enaèbe x+ln(x)=0 s sekantno metodo, pri èemer
%je zaèetni interval x0=0.1, x1=1.

f=inline('x+log(x)');

sekantna(f,0.1,1)