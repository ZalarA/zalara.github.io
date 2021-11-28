function [T,m]=trapeznokontrola(f,a,b,N,epsilon)

% Trapezno pravilo s kontrolo koraka
% Racunanje vrednosti dolocenega integrala
% Podatki:
%               f           zvezna funkcija
%               a                       zacetna tocka intervala
%               b                       koncna tocka intervala
%               N                       maksimalno stevilo razpolavljanj
%               epsilon zahtevana natancnost rezultata
% Rezultat:
%               T               priblizek za vrednost integrala

e = 2*epsilon;
m = 0;
h = (b-a);
T = h*(f(a)+f(b))/2;
while (m<N)*(e>epsilon)
   m=m+1;
   h = h/2;
   k = 2^(m-1);
     s = 0;
     for i = 1:k
           s = s + f(a+(2*i-1)*h);
     end
   e = s*h-T/2;
   T = T + e;
end
if abs(e)>epsilon
   T = NaN;
end