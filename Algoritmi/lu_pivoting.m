function [L,U,P]=lu_pivoting(A)
  %racunamo LU razcep z delnim pivotiranja matrike A
  [n,m]=size(A);P=eye(n);L=eye(n);
  
  for k=1:n-1
    pivot=A(k,k);
    pivotna_pozicija=k;
    for i=k+1:n
      if abs(A(i,k))>abs(pivot)
        pivot=A(i,k);pivotna_pozicija=i;
      end
    end
    if pivotna_pozicija!=k
      Pk=P(k,:);Ak=A(k,:);Lk=L(k,:);
      P(k,:)=P(pivotna_pozicija,:);P(pivotna_pozicija,:)=Pk;
      A(k,:)=A(pivotna_pozicija,:);A(pivotna_pozicija,:)=Ak;
      L(k,:)=L(pivotna_pozicija,:);L(pivotna_pozicija,:)=Lk;
    end
    for i=k+1:n
      L(i,k)=A(i,k)/A(k,k);
      for j=k+1:n
        A(i,j)=A(i,j)-L(i,k)*A(k,j);
      end
    end
  end
  U=triu(A);
  L=tril(L)+eye(n);
endfunction
