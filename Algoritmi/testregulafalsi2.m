fprintf(['Primer reševanja enaèbe x+ln(x)=0 z regulafalsi metodo, pri èemer',...
            ' je zaèetni interval x0=0.1, x1=1.\n\n'])

f=inline('x+log(x)');
pause
regulafalsi(f,0.1,1,eps)