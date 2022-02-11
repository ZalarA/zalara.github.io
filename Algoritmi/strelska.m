function [alpha,Y]=strelska(f,x0,y0,b,B,alpha0,alpha1,N,h,epsilon,m)

% Strelska metoda 
% Racunanje resitve robnega problema
%               [y,z]' = f(x,y,z); y(x0) = y(0), y(b) = B
% Podatki:
%               f      desna stran diferencialne enacbe
%               x0                      zacetna tocka 
%               y0                      zacetna vrednost resitve y
%               b                       koncna tocka 
%               B                       koncna vrednost resitve z
%               alpha0, alpha1
%                                       dva zacetna priblizka za z(x0)  
%               N                       stevilo korakov
%               h                       dolzina koraka
% Rezultat:
%               alpha           prava vrednost za z(x0)
%               Y                       priblizek za resitev diferencialne enacbe


y = [y0 alpha0]';
A = [alpha0 alpha1];


Yplot = [];
[X,Y] = RK4(f,x0,y,N,h);
Yplot = [Yplot Y(1,2:N+1)'];
ys = Y(1,N+1);%[alpha0,ys]
hold off, axis([0 1 0 8])
plot(X,Y(1,:),'g');pause(1)
hold on

y = [y0 alpha1]';
[X,Y] = RK4(f,x0,y,N,h);
plot(X,Y(1,:),'r');pause(1)
Yplot = [Yplot Y(1,2:N+1)'];
yn = Y(1,N+1);%[alpha1,yn]
j = 1;
while (abs(yn-B)>epsilon) & (j<m)
        j = j+1;
        alpha = alpha0 + (alpha1 - alpha0)*(B-ys)/(yn-ys);
        A = [A alpha];
        y = [y0 alpha]';
        [X,Y] = RK4(f,x0,y,N,h);
        plot(X,Y(1,:));pause(1)
        Yplot = [Yplot, Y(1,2:N+1)'];
        ys = yn;
        yn = Y(1,N+1);
        alpha0 = alpha1;
        alpha1 = alpha;
%[alpha,yn]
end
  plot(X, Y(1,:)','m');
if abs(yn-B)>epsilon
        alpha = NaN
end
Y
plot(X, Y(2,:)','c');