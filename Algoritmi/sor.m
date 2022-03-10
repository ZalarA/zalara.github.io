function [y,korak]=sor(A,x0,b,w,delta,maxsteps)
  
% SOR iteracija za w za resevanje sistema Ax = b, x0 je zacetni priblizek
%Nobena komponenta x0 naj ne bo 0. Za 0 uporabimo eps.

%Iteracija se konca, ko se zadnja priblizka relativno
%razlikujeta za manj kot delta ali ko prekoracimo maksimalno stevilo korakov maxsteps.
%Ce zadnjih dveh argumentov ne podamo, je privzeta vrednost za delta osnovna 
%zaokrozitvena napaka eps, za maxsteps pa 50. 

% ce ne podamo tretjega argumenta z natancnostjo, privzamemo osnovno zaokrozitveno napako
if nargin<5, delta=eps; end
% ce ne podamo cetrtega argumenta z maksimalnim stevilom iteracij, vzamemo 50
if nargin<6, maxsteps=50; end

xn=x0;
x0=Inf*xn; 
korak=0;
D = diag(diag(A));
U = triu(A,1);
L = tril(A,-1); 
T=(D+w*L)^(-1)*((1-w)*D-w*U);
c=w*(D+w*L)^(-1)*b;

while (norm(xn-x0,'inf')>delta*norm(xn,'inf')) & (korak<maxsteps)
   korak=korak+1;           						 
   x0=xn;
   xn=T*x0+c;   
   disp(sprintf('%3d:  %s %0.1e',korak,sprintf('%15.15f  ',xn),norm(xn-x0,'inf')/norm(x0,'inf')));  % nepomembno, izpisemo trenutni priblizek
end   

y=xn;


 

