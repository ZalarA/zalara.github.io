function x=obratna_sub(U,y)
  %resujemo zgornjetrikotni sistem Ux=y z obratno substitucijo
  
 [n,m]=size(U);x=zeros(n,1);
  x(n)=y(n)/U(n,n);
  for i=n-1:-1:1
    s=y(i);
    for j=i+1:n
      s=s-U(i,j)*x(j);
    endfor
    x(i)=s/U(i,i);
  endfor
endfunction
