fprintf(['Primer re�evanja ena�be x-x^(1/3)-2=0 z interacijo g(x)=x^{1/3}+2 metodo, pri �emer,\n'...
            ' je za�etni pribli�ek x0=3.'])

g=inline('x^(1/3)+2');
pause

iteracija(g,3)