function y=broyden(F,JF0,x0,delta,maxsteps)

% y=BROYDEN(F,JF0,x0,delta,maxsteps) dela Broydenovo metodo za nelinearno funkcijo F
% z zacetnim priblizkom x0 in z zacetnim priblizkom JF0 za Jacobijevo matriko v tocki x0. 
% Funkcija F mora biti podana v obliki inline funkcij 
% (npr. F=inline('[x(1)^2+x(2)^2-10*x(1)+x(2)-1, x(1)^2-x(2)^2-x(1)+10*x(2)-25]') ). 
% Iteracija se konca, ko se zadnja priblizka relativno razlikujeta za manj kot delta ali ko 
% prekoracimo maksimalno stevilo korakov maxsteps. Ce zadnjih dveh argumentov ne podamo, je 
% privzeta vrednost za delta osnovna zaokrozitvena napaka eps, za maxsteps pa 50.
%
% Metoda ni optimizirana, saj bi bilo ekonomicnejse v vsakem koraku namesto B posodobiti
% razcep te matrike, ki ga uporabljamo za resevanje linearnega sistema.

% Bor Plestenjak 2004

if nargin<4, delta=eps; end
if nargin<5, maxsteps=50; end

xn=x0;
deltax=2*delta*x0;
korak=0;                    						 
B=JF0;
while (norm(deltax)>delta*norm(xn)) & (korak<maxsteps)
   korak=korak+1;           						 
   x0=xn;
   deltax=-B\F(x0);
   xn=x0+deltax;
   disp(sprintf('%3d:  %s %0.1e',korak,sprintf('%15.15f  ',xn),norm(deltax,'inf')/norm(x0,'inf')));  % izpisemo trenutni priblizek
   B=B+F(xn)*deltax'/(deltax'*deltax); % popravek za aproksimacijo JF(xn), ki zadosca B(xn-x0)=F(xn)-F(x0)
end   

y=xn;