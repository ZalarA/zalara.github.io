function [X,Y]=RK4sis(fun,x0,y0,N,h)

% Metoda Runge-Kutta 4. reda 
% Racunanje resitve diferencialne enacbe
% Podatki: 
%               x0                      zacetna tocka 
%               y0                      zacetna vrednost resitve
%               N                       stevilo korakov
%               h                       dolzina koraka
% Rezultat:
%               X                       x-koordinate resitev diferencialne enacbe
%               Y                       priblizek za resitev diferencialne enacbe

x = x0;                          X = [x];
y = y0;                          Y = [y];
for i = 1:N
   k1 = h*fun(x,y);
   k2 = h*fun(x+h/2,y+k1/2);
   k3 = h*fun(x+h/2,y+k2/2);
   k4 = h*fun(x+h,y+k3);
   x = x+h;                                                                     X = [X x];
   y = y + (k1+k2+k2+k3+k3+k4)/6;       Y = [Y y];
end
