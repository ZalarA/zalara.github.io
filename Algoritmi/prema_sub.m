function y=prema_sub(L,b)
  %resujemo zgornjetrikotni sistem Ly=b z obratno substitucijo
  
  [n,m]=size(L);y=zeros(n,1);
  y(1)=b(1)/L(1,1);
  for i=2:n
    s=b(i);
    for j=1:i-1
      s=s-L(i,j)*y(j);
    endfor
    y(i)=s/L(i,i);
  endfor
endfunction
