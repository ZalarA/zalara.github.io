fprintf(['Primer re�evanja ena�be x-x^(1/3)-2=0 z interacijo g(x)=(x-2)^3 metodo, pri �emer\n'...
          ' je za�etni pribli�ek x0=3.\n\n'])

g=inline('(x-2)^3');
pause
iteracija(g,3)