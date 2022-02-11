function y=regulafalsi(f,a,b,delta,maxsteps)

% y=REGULAFALSI(f,a,b,delta,maxsteps) dela sekantno metodo za funkcijo f 
% z zacetnima priblizkoma a in b, kjer je f(a)f(b)<0. Nova priblizka sta
% a in presecisce c, ce je f(a)f(c)<0, sicer pa c in b.
% Funkcija f mora biti podana v obliki inline funkcije 
% (npr. f=inline('x^2-2')). Iteracija se konca, ko se zadnja priblizka 
% razlikujeta za manj kot delta ali ko prekoracimo maksimalno stevilo korakov maxsteps.
% Ce zadnjih dveh argumentov ne podamo, je privzeta vrednost za delta osnovna 
% zaokrozitvena napaka eps, za maxsteps pa 50.

% Bor Plestenjak 2004

if nargin<4, delta=eps; end
if nargin<5, maxsteps=50; end

korak=0;     
c=b

disp(sprintf('Korak,  Levo krajisce,   Desno krajisce,    Presecisce,    Vrednost'));
disp(sprintf('%3d: %15.15f  %15.15f  %15.15f  %15.15f',[korak,a,b,Inf,f(b)]));
               						 
while (abs(b-a)>delta) & (korak<maxsteps) & abs(f(c))>eps
    c=b-(b-a)/(f(b)-f(a))*f(b);
    korak=korak+1;
    if f(a)*f(c)<0,
      b=c;
    else 
      a=c;
    end
    disp(sprintf('%3d: %15.15f  %15.15f  %15.15f  %15.15f',[korak,a,b,c,f(c)]));
end   

y=c;