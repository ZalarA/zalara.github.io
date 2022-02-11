function [X,Y]=predkor4sis(f,x0,y0,N,h,d)

% Adams-Bashforth-Moultonova 
% metoda prediktor-korektor 4. reda - algoritem 6.3.2
% Racunanje resitve diferencialne enacbe
% Podatki:
%               f632            desna stran diferencialne enacbe
%               x0                      zacetna tocka 
%               y0                      zacetna vrednost resitve
%               N                       stevilo korakov
%               h                       dolzina koraka
%               d                       vektor prvih 3 priblizkov
% Rezultat:
%               Y                       priblizek za resitev diferencialne enacbe

y = y0;
Y = [y];
x = x0; X = [x];
d(:,4) = fun(x,y);

for i = 4:N+3
   x = x+h;     
   X = [X x];
   yp= y + h*(55*d(:,4) - 59*d(:,3) + 37*d(:,2) - 9*d(:,1))/24;
        dp = fun(x,yp);
        y = y + h*(9*dp + 19*d(:,4) - 5*d(:,3) + d(:,2))/24;
   Y = [Y y];
   d(:,5) = fun(x,y);
   for j = 1:4
        d(:,j) = d(:,j+1);
   end
end