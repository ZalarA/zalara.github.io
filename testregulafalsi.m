%Primer reševanja enaèbe x-x^(1/3)-2=0 z regulafalsi metodo, pri èemer
%je zaèetni interval x0=3, x1=4.

f=inline('x-x^(1/3)-2');

regulafalsi(f,3,4,10^(-16))