% Metoda DOPRI5 - uporaba algoritma 6.5.1

y0 = 2;
x0 = 0;
b = 10;
epsilon = 1e-7;
h = b-x0;
sigma = 0.9;

[X,Y,H]=DOPRI5(f,x0,y0,b,epsilon,sigma);

z = 1 + exp(-X);
err = Y - (exp(-X)+1);
maxerr = max(abs(err))
[n,m] = size(X);
figure(3)
    bar(X(2:m), H(2:m))
    title('Metoda DOPRI5 reda 5(4)')
    xlabel('x')
    ylabel('Zaporedje korakov')
figure(2)
    plot(X,-err)
    title('Metoda DOPRI5 reda 5(4)')
    xlabel('x')
    ylabel('Globalna napaka')
figure(1)
    plot(X,Y,'*r',X,z,'g')
    title('Metoda DOPRI5 reda 5(4)')
    ylabel('Num. resitev (rdeca) in tocna resitev (zelena)')
    xlabel('x')
