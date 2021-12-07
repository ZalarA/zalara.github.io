function [T,Nev,e]=trapeznoadaptivno(f,a,b,epsilon)

% adaptivno Trapezno pravilo 
% Racunanje vrednosti dolocenega integrala
% Podatki:
%               f           zvezna funkcija
%               a                       zacetna tocka intervala
%               b                       koncna tocka intervala
%               N                       maksimalno stevilo razpolavljanj
%               epsilon zahtevana natancnost rezultata
% Rezultat:
%               T               priblizek za vrednost integrala
%               Nev             stevilo izracunov funkcijskih vrednosti
%               e               ocena napake priblizka

h =(b-a);
c=(a+b)/2;
plot([c c],[-1,1]*1e-2,'b'); % plot new point

T1 =h*(f(a)+f(b))/2;
T2= T1/2+h/2*(f(c));
e=abs(T2-T1)/3;
if (e<epsilon)
  T=T2+(T2-T1)/3;
  Nev=3;
else
   [T11,Nev1,e1]=trapeznoadaptivno(f,a,c,epsilon/2);
   [T21,Nev2,e2]=trapeznoadaptivno(f,c,b,epsilon/2);
   T=T11+T21;
   Nev=Nev1+Nev2;
   e=e1+e2;
end
end
