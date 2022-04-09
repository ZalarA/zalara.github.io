fprintf(['Primer reševanja enaèbe x-x^(1/3)-2=0 s sekantno metodo,\n'...
        'pri èemer je zaèetni interval x0=3, x1=4.\n\n'])

f=inline('x-x^(1/3)-2');
pause
sekantna(f,3,4)