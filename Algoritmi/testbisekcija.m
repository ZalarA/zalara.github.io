%Primer reševanja enaèbe x-x^(1/3)-2=0 z metodo bisekcije, pri èemer
%je zaèetni interval [3,4]

f=inline('x-x^(1/3)-2');

bisekcija(f,3,4,10^(-16))