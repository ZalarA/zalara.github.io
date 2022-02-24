function [L,U]=lu_no_pivot(A)
  %racunamo LU razcep brez pivotiranja matrike A
  [n,m]=size(A);L=eye(n);
  for k=1:n-1
    for i=k+1:n
      L(i,k)=A(i,k)/A(k,k);
      for j=k+1:n
        A(i,j)=A(i,j)-L(i,k)*A(k,j);
      end
    end
  end
  U=triu(A);
endfunction
