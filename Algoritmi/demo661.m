% Sistem linearnih diferencialnih enacb
% Adams-Bashforth-Moulton   in Runge-Kutta 4. reda 

N = 10;
h = 1/10;
x0 = 0; 
y0 = [1 1]';

f =@(x,y)  [y(1) - 2*y(2) - 2*exp(-x) + 2
   2*y(1) -   y(2) - 2*exp(-x) + 1];

d=[exp(0.3),exp(0.2),exp(0.1);1,1,1]
[X,Y]=predkor4sis(f,x0,y0,N,h,d) %Adams-Bashforth-Moulton

E = Y - [exp(-X); ones(size(X))];
figure(1)
plot(X,Y,'*r',X,[exp(-X); ones(size(X))],'g')
    title('Adams-Bashforth-Moulton 4.reda')
    xlabel('x')
    ylabel('Tocna resitev (zelena) in numericna resitev (rdeca)')
figure(2)
plot(X,E)
    title('Adams-Bashforth-Moulton 4.reda')
    xlabel('x')
    ylabel('Globalna napaka')


[X,Y]=RK4(f,x0,y0,N,h) %Runge-Kutta    

E = Y - [exp(-X); ones(size(X))]; xx = [x0:0.0001:x0+N*h];
figure(3)
plot(X,Y,'*r',xx,[exp(-xx); ones(size(xx))],'g')
    title('Runge-Kutta 4.reda')
    xlabel('x')
    ylabel('Tocna resitev (zelena) in numericna resitev (rdeca)')
figure(4)
plot(X,E)
    title('Runge-Kutta 4.reda')
    xlabel('x')
    ylabel('Globalna napaka')