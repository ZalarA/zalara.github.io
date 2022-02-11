%Primer reševanja enaèbe x+ln(x)=0 z metodo bisekcije, pri èemer
%je zaèetni interval [0.1,1]

f=inline('x+log(x)');

bisekcija(f,0.1,1,10^(-5))