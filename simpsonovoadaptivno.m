function [S,Nev,err]=simpsonovoadaptivno(f,a,b,epsilon)

% adaptivno Simpsonovo pravilo 
% Racunanje vrednosti dolocenega integrala
% Podatki:
%               f           zvezna funkcija
%               a                       zacetna tocka intervala
%               b                       koncna tocka intervala
%               N                       maksimalno stevilo razpolavljanj
%               epsilon zahtevana natancnost rezultata
% Rezultat:
%               S               priblizek za vrednost integrala
%               Nev             stevilo izracunov funkcijskih vrednosti
%               err               ocena napake priblizka

fa=f(a); fb=f(b);
h =(b-a);
c=(a+b)/2; fc=f(c);
plot([c c],[-1,1]*10^(-2),'b'); % plot new point

d=(a+c)/2; fd=f(d); e=(c+b)/2; fe=f(e);
plot([d d],[-1,1]*10^(-2),'b'); % plot new point
plot([e e],[-1,1]*10^(-2),'b'); % plot new point

S1=h/6*(fa+4*fc+fb);
S2=h/12*(fa+4*fd+2*fc+4*fe+fb);

err=abs(S2-S1)/15;
if (err<epsilon)
  S=S2+(S2-S1)/15;
  Nev=5;
else
   [S11,Nev1,err1]=simpsonovoadaptivno(f,a,c,epsilon/2);
   [S21,Nev2,err2]=simpsonovoadaptivno(f,c,b,epsilon/2);
   S=S11+S21;
   Nev=Nev1+Nev2;
   err=err1+err2;
end
end
