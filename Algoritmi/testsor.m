% SOR iteracija za testni primer:
%
%12x-3y+z=10
%-x+9y+2z=10
%x-y+10z=10

A=[12, -3, 1; -1, 9, 2; 1, -1, 10]
D=diag(A)
L=-tril(A,-1)
U=-triu(A,1)
b=[10;10;10]
x0=[1/2;1/2;1/2]
w=0.9

sor(A,x0,b,w)

R=inv(diag(D)-w*L)*((1-w)*diag(D)+w*U);

disp(sprintf('Supremum norma matrike R je %1.3f.',norm(R,inf)))
    
     
