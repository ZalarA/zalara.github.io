function y = seidel_f(x)

% Iteracijska funkcija za testni primer in Seidlovo iteracijsko obliko

x(1)=1/3 * (cos(x(1)*x(2))+0.6);
x(2)=1/9 * sqrt(x(1)^2+sin(x(3))+1.1)-0.1;
x(3)=-1/20 * (exp(-x(1)*x(2))+9.1);

y=x;
