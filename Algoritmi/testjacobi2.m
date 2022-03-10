% Jacobijeva iteracija za testni primer:
%
%-2x+y=-1
%x-2y+z=0
%y-2z+w=0
%z-2w=-1

A = [-2 1 0 0; 1 -2 1 0; 0 1 -2 1; 0 0 1 -2]
D=diag(A)
L=-tril(A,-1)
U=-triu(A,1)
b = [-1; 0; 0; -1]
x0=[eps;eps;eps;eps]

jacobi(A,x0,b,eps,100)

disp(sprintf('Supremum norma matrike R je %1.3f.',norm(inv(diag(D))*(L+U),inf)))
     

     
