fprintf(['Primer re�evanja ena�be x-x^(1/3)-2=0 z regulafalsi metodo,\n ',... 
        ' pri �emer je za�etni interval x0=3, x1=4.'])

f=inline('x-x^(1/3)-2');
pause
regulafalsi(f,3,4,10^(-16))