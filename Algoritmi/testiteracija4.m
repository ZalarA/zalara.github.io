%Primer re�evanja ena�be x+log(x)=0 z interacijo g(x)=-log(x) metodo, pri �emer
%je za�etni pribli�ek x0=0.1.

g=inline('(-log(x)+x)/2');

iteracija(g,0.1)