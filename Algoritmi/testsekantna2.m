fprintf(['Primer re�evanja ena�be x+ln(x)=0 s sekantno metodo\n',... 
        ' pri �emer je za�etni interval x0=0.1, x1=1.'])

f=inline('x+log(x)');
pause
sekantna(f,0.1,1,eps)