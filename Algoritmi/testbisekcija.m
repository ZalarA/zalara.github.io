fprintf(['Primer re�evanja ena�be x-x^(1/3)-2=0 z metodo bisekcije, pri �emer',...
        'je za�etni interval [3,4].\n\n'])

f=inline('x-x^(1/3)-2');
pause

bisekcija(f,3,4,10^(-16))