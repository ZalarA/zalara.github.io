fprintf(['Primer reševanja enaèbe x+ln(x)=0 z metodo bisekcije, pri èemer',...
        ' je zaèetni interval [0.1,1].\n\n'])

f=inline('x+log(x)')
pause
bisekcija(f,0.1,1,10^(-5))