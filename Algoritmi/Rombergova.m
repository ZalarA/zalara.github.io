function T=Rombergova(f,a,b,k)

% Rombergova metoda
% Racunanje vrednosti dolocenega integrala
% Podatki:
%               f           zvezna funkcija
%               a                       zacetna tocka intervala
%               b                       koncna tocka intervala
%               k                       stevilo razpolavljanj koraka
% Rezultat:
%               T                       Rombergova tabela

T = zeros(k+1,k+1);
h = (b-a);
T(1,1) = h*(f(a) + f(b))/2;
for m = 2:k+1
   h = h/2;
   T(m,1) = T(m-1,1)/2;
   s = 0;
   for i = 1:2^(m-2)
      s = s + f(a + (2*i-1)*h);
   end
   T(m,1) = T(m,1) + h*s;
   for n=2:m
      T(m,n) = (4^(n-1)*T(m,n-1)-T(m-1,n-1))/(4^(n-1)-1);
   end
end