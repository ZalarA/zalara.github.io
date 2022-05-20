function [X,Y]=euler(f,x0,y0,N,h)

% Eulerjeva metoda
% Racunanje resitve diferencialne enacbe
% Podatki:
%               f          desna stran diferencialne enacbe
%               x0                      zacetna tocka 
%               y0                      zacetna vrednost resitve
%               N                       stevilo korakov
%               h                       dolzina koraka
% Rezultat:
%               Y                       priblizek za resitev diferencialne enacbe

x = x0; 
y = y0;
Y = y; 
X = x;

for i = 1:N
   y = y + h*f(x,y);
   x = x+h;
   Y = [Y y];
   X = [X x];
end