f=@(x,y) (-y+1);
[X,Y]=euler(f,0,2,10,0.1);
x=0;
h=1/10;

disp(sprintf('Eulerjeva metoda'));
for i=0:10
  y=exp(-x)+1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, napaka: %15.15f',i,x,Y(i+1),Y(i+1)-y));
  x=x+h;
endfor


disp(sprintf('AB metoda reda 4'));
x0=0;h=0.1;
x = x0-3*h;
for i=1:3
        y = 1+exp(-x); 
        d(i) = f(x,y);
        x = x+h;         
end
Y=AB4(f,0,2,10,0.1,d);
x=0;
for i=0:10
  y=exp(-x)+1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, napaka: %15.15f',i,x,Y(i+1),Y(i+1)-y));
  x=x+h;
endfor


disp(sprintf('ABM-prediktor korektor reda 4'));
x0=0;h=0.1;
x = x0-3*h;
for i=1:3
        y = 1+exp(-x); 
        d(i) = f(x,y);
        x = x+h;         
end
Y=predkor4(f,0,2,10,0.1,d);
x=0;
for i=0:10
  y=exp(-x)+1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, napaka: %15.15f',i,x,Y(i+1),Y(i+1)-y));
  x=x+h;
endfor

disp(sprintf('Runge-Kutta metoda reda 4'));
[X,Y]=RK4(f,0,2,10,0.1);
x=0;
for i=0:10
  y=exp(-x)+1;
  disp(sprintf('i=%d: %3.5f, y=%3.15f, napaka: %15.15f',i,x,Y(i+1),Y(i+1)-y));
  x=x+h;
endfor

disp(sprintf('DOPRI5'));
[X,Y,H]=DOPRI5(f,0,2,10,10^(-7),0.9);
[n,m] = size(X);
for i=0:m-1
  disp(sprintf('x=%3.5f, h=%3.5f, y=%3.5f, napaka: %5.15f',X(i+1),H(i+1),Y(i+1), Y(i+1)-exp(-X(i+1))-1));
endfor

[X,Y,H]=DOPRI5(f,0,2,10,10^(-7),0.9);

z = 1 + exp(-X);
err = Y - (exp(-X)+1);
maxerr = max(abs(err));
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