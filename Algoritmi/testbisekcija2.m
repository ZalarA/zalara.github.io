fprintf(['Primer re�evanja ena�be x+ln(x)=0 z metodo bisekcije, pri �emer',...
        ' je za�etni interval [0.1,1].\n\n'])

f=inline('x+log(x)')
pause
bisekcija(f,0.1,1,10^(-5))