fprintf(['Primer re�evanja ena�be x+log(x)=0 z interacijo g(x)=-log(x) metodo, pri �emer \n'...
'je za�etni pribli�ek x0=0.1.\n\n'])

g=inline('(-log(x)+x)/2');
pause

iteracija(g,0.1)