%Primer re�evanja ena�be x+ln(x)=0 z metodo bisekcije, pri �emer
%je za�etni interval [0.1,1]

f=inline('x+log(x)');

bisekcija(f,0.1,1,10^(-5))