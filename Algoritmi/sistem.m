% Sistem linearnih diferencialnih enacb
% Adams-Bashforth-Moulton   in Runge-Kutta 4. reda 
clear
f=@(x,y) [y(1) - 2*y(2) - 2*exp(-x) + 2
   2*y(1) -   y(2) - 2*exp(-x) + 1];

N = 10;
h = 1/10;
x0 = 0; 
y0 = [1 1]';

x = x0-3*h;
for i=1:3
  y = [exp(-x) 1]';
  fun(x,y)
  d(:,i) = fun(x,y);
  x = x+h;         
end

[X,Y]=predkor4sis(f,x0,y0,N,h,d);

E = Y - [exp(-X); ones(size(X))];
E1=E;

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

[X,Y]=RK4sis(f,x0,y0,N,h) 

E = Y - [exp(-X); ones(size(X))]; xx = [x0:0.0001:x0+N*h];
E2=E;

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
    
x=0;
for i=0:10
  disp(sprintf('x=%1.1f,ABM1:%1.8f,ABM2:%1.8f,RK1:%1.8f,RK2:%1.8f',x,E1(1,i+1),E1(2,i+1),E2(1,i+1),E2(2,i+1)));
  x=x+1/10;
endfor
