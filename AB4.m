function Y=AB4(f,x0,y0,N,h,d)

% Adams-Bashforthova metoda 4. reda 
% Racunanje resitve diferencialne enacbe
%
% Podatki:
%               f            desna stran diferencialne enacbe
%               x0                      zacetna tocka 
%               y0                      zacetna vrednost resitve
%               N                       stevilo korakov
%               h                       dolzina koraka
%               d                       vektor prvih 3 priblizkov
% Rezultat:
%               Y                       priblizek za resitev diferencialne enacbe


y = y0; Y = [y];
x = x0; X = [x];
d(4) = f(x,y);

for i = 4:N+3
   x = x+h;     X = [X x];
   y = y + h*(55*d(4) - 59*d(3) + 37*d(2) - 9*d(1))/24;
   Y = [Y y];
   d(5) = f(x,y);
   for j = 1:4
        d(j) = d(j+1);
   end
end