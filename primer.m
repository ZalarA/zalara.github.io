fun = @(x) sqrt(x-2);
a=3;b=6; 
q = integral(fun,a,b);
disp(sprintf('Toèna vrednost integrala je %15.15f', q));

N=[1,2,5,10,100,1000];

disp(sprintf('Trapezno pravilo iz n osnovnih pravil, kjer je:'))
for n=N
  I=trapezno(fun,a,b,n);
  disp(sprintf('n=%d: %15.15f, h=%2.4f, napaka: %15.15f',n,I,(b-a)/n,I-q));
endfor

disp(sprintf('Simpsonovo pravilo iz n osnovnih pravil, kjer je:'))
for n=N
  I=Simpsonovo(fun,a,b,n);
  disp(sprintf('n=%d: %15.15f, h=%2.4f, napaka: %15.15f',n,I,(b-a)/2/n,I-q));
endfor

disp(sprintf('Trapezno pravilo s kontrolo koraka iz m delitev in napako najveè 10^(-k):'))
n=50;
for k=[0,1,2,3,4,5,6,7,8,9]
  [I,m]=trapeznokontrola(fun,a,b,n,10^(-k));
  disp(sprintf('k=%d; m=%d: %15.15f, napaka: %15.15f',k,m,I,I-q));
endfor

disp(sprintf('Rombergova tabela s 5 razpolavljanji:'))
T=Rombergova(fun,a,b,5)
disp(sprintf('Napake v Rombergovi tabeli s 5 razpolavljanji):'))
T-q*tril(ones(6))

%disp(sprintf('Gaussovo kvadraturno pravilo z 2 delilnima toèkama:'))
%N=[1,5,10,50];a=3;b=6; 
%k=2;
%for n=N
%  I=Gauss(fun,a,b,k,n);
%  disp(sprintf('n=%d: %15.15f, napaka: %15.15f',n,I,I-q));
%endfor