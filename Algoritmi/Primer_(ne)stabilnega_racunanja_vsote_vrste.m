%Racunamo vrsto 1/(1*2)+1/(2*3)+...+1/(n*(n+1)) na tri nacine.
%Tocen rezultat je n/(n+1) (npr. indukcija).
%Numericno lahko sestevamo od leve proti desni, ali od desne proti levi.
%Racunanje od desne proti levi je bistveno stabilnejse.

disp('          n  |           naprej            |            nazaj            |     toèno')
naprej=0;
nazaj=0;
for n=[10,100,1000,10000]
  for i=1:n
    naprej=naprej+1/(i*(i+1));
  end
  for i=n:-1:1
    nazaj=nazaj+1/(i*(i+1));
  end
  disp(sprintf('%12d | %5.25f | %5.25f | %5.25f', n,naprej,nazaj,n/(n+1)))
naprej=0;
nazaj=0;
end
