%Rešujemo sistem Ax=b s pomoèjo LU razcepa

%A=[2 1 3 -4; -4 -1 -4 7; 2 3 5 -3; -2 -2 -7 9]
%b=[8; -14; 7; -16]

A=[2 1 3 -4; -4 -1 -4 7; 2 3 5 -3; -2 -2 -7 9]
b=[8; -14; 7; -16]
[L,U]=lu_no_pivot(A)
y=prema_sub(L,b)
x=obratna_sub(U,y)
