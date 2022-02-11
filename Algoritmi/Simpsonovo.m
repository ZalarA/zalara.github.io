function S=Simpsonovo(f,a,b,n)

% Simpsonovo sestavljeno pravilo
% Racunanje vrednosti dolocenega integrala
% Podatki:
% 		f	zvezna funkcija
%		a		zacetna tocka intervala
%		b		koncna tocka intervala
%		n		stevilo podintervalov
% Rezultat:
%		S		priblizek za vrednost integrala

h = (b-a)/n/2;
S = (f(a)+f(b)+4*f(a+h));
   for i = 1:n-1
      S = S + 2*f(a+2*i*h) + 4*f(a+2*i*h+h);
   end
S = S*h/3;

