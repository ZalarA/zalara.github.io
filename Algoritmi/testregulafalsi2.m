%Primer re�evanja ena�be x+ln(x)=0 z regulafalsi metodo, pri �emer
%je za�etni interval x0=0.1, x1=1.

f=inline('x+log(x)');

regulafalsi(f,0.1,1,10^(-16))