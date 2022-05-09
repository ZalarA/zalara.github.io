function [T,err]=trapeznokontrola(f,a,b,N,tol)

% Trapezno pravilo s kontrolo koraka
% Racunanje vrednosti dolocenega integrala
% Podatki:
%               f           zvezna funkcija
%               a                       zacetna tocka intervala
%               b                       koncna tocka intervala
%               N                       maksimalno stevilo razpolavljanj
%               tol         zahtevana natancnost rezultata
% Rezultat:
%               T               priblizek za vrednost integrala
%               err            ocena napake približka


err = 2*tol;
m = 0;
h = (b-a);
T = h*(f(a)+f(b))/2;
while (m<N)&(abs(err)>tol)
   m=m+1;
   h = h/2;
   k = 2^(m-1);
     s = 0;
     for i = 1:k
           s = s + f(a+(2*i-1)*h);
     end
   err = (s*h-T/2)/3;
   T = T/2 + s*h;
end